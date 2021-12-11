 ШИФР 131266 ЗСХ‾
 ОЗУ 32‾
 ЛЕН 33(ПАСКАЛЬ.ТРАНС)‾
 ЛЕН 34(РАSСАL.СЧЕТ)35(РАSNЕW)‾
 ЛЕН 36(ПАСКАЛЬ.ЗАГР)‾
 ЛЕН 42(МОНИТ3-ЗП)‾
 ЕЕВ1А3
 *NАМЕ
 *FIСМЕ
 *LIВRА:34
 *РЕRSО:350000
 *РЕRSО:360000,СОNТ
 *РЕRSО:420032,СОNТ
 *NО LISТ
 *        NО LОАD
 *ТRАNS:МРАSСАL,,33
   РRОGRАМ  СОРУ ( INРUТ, ОUТРUТ ); (*=Р-,Т-*)
 % INСLUDЕ ДБФ
 % DЕF
   SКIР      =  _(_)
   IF       +=  ‾IF
   ТНЕN      =  ‾ТНЕN_(
   ЕLSЕ      = _)‾ЕLSЕ_(
   ЕLSIF     =  _)‾ЕLSЕ ‾IF
   ЕNDIF     =  °°IF_)
   WНILЕ    +=  ‾WНILЕ
   DО        = ‾DО_(
   ЕNDWНILЕ  =  °°WНILЕ_)
   FОR      +=  ‾FОR
   ЕNDFОR    =  °°FОR_)
   САSЕ      =  ‾САSЕ
   ЕNDСАSЕ   =   _)
   RЕСОRD   +=  ‾RЕСОRD
   ЕNDRЕС    =  °°RЕСОRD_)
   ЕNDWIТН   =  _)
 % FЕD






   (*-----------------------------------------------------*)
   (*                                                     *)
   (*        ПРОГРАММА КОПИРОВАНИЯ ФАЙЛОВ ИЗ "ДБ"         *)
   (*        В "ДБ".                                      *)
   (*                                                     *)
   (*-----------------------------------------------------*)


   (* ------------ РАЗДЕЛ МЕТОК -------------- *)

      LАВЕL    1;

   (* ------------ РАЗДЕЛ КОНСТАНТ ----------- *)

      СОNSТ

       Э70 = 700000В;
       ЛЧТ = 10370000000000В;
       ЛЗП =   360000000000В;

                  (*=А0 *)

     ДВА12 = 10000В;
     ДВА18 = 1000000В;
        LF = ’_012’;
     SLАSН = ’/’;
    ПРОБЕЛ = ’ ’;
       П6П = ’      ’;
    ФИШКА  =  ’        *** КОПИРОВАНИЕ ФАЙЛОВ. ВЕРС. 1 ОТ 08.02.89 ***’;


   (* ----------- РАЗДЕЛ ПЕРЕМЕННЫХ ---------- *)


     VАR

               СИМВ  : СНАR;
             DR, DW  : INТ;     (*     ДЕСКРИПТОРЫ ФАЙЛОВ          *)
             НУЗЗЗW  : INТ;     (*   КООРДИНАТЫ БИБЛИОТЕКИ ЗАПИСИ  *)
          ИМЯ_W,ИМЯ  : РSТRING; (*           ИМЯ ФАЙЛА             *)
   LIВWRIТЕ, LIВRЕАD : АLFА;    (*         ИМЕНА БИБЛИОТЕК         *)
              LR, LW : INТ;     (*          ДЛИНЫ ФАЙЛОВ           *)
                  КО : INТ;     (*    КОД ОТВЕТА ФАЙЛОВОЙ СИС-МЫ   *)
        NАМЕ_W,NАМЕ  : WОRD3;   (*    КАНОНИЧЕСКИЕ ИМЕНА ФАЙЛОВ    *)
                  I  : INТ;     (*         РАБОЧИЙ ИНДЕКС          *)
           ОNLУ_LIВ  : ВООL;    (*    ПРИЗНАК ЗАПИСИ В БИБЛИОТЕКУ  *)


   (* ------------ РАЗДЕЛ ПРОЦЕДУР ----------- *)


     РRОСЕDURЕ  РАSВIND ( VАR Ф : ТЕХТ ); ЕХТЕRNАL;


     FUNСТIОN FIRSТF ( VАR ИМЯ : РSТRING; LIВУ, РАСШИР : АLFА;
                       VАR NАМЕ : WОRD3 ) : INТ; АSSЕМВLЕR;

     FUNСТIОN NЕХТF ( VАR NАМЕ : WОRD3 ) : INТ; АSSЕМВLЕR;



    РRОСЕDURЕ  ДАЙСИ;

        (*

          ВЫБОРКА СИМВОЛА

        *)

     ВЕGIN
      IF ЕОLN(INРUТ) ТНЕN  СИМВ:=LF; ЕХIТ ЕNDIF;
      СИМВ:=INРUТ!;
      GЕТ (INРUТ);
     ЕND;

    (*   ЕND  ОF  ДАЙСИ  *)

    (*--------------------------------------------*)


   FUNСТIОN  ПРОПУС : ВООL;

     (*
       ПРОПУСК ПРОБЕЛОВ В СТРОКЕ
     *)

     (*

       ТRUЕ - ДОШЕЛ ДО СЛЕД. ЛЕКСЕМЫ

       FАLSЕ - ВЫВАЛИЛСЯ НА LF

     *)


      ВЕGIN
        IF СИМВ = LF ТНЕN  ПРОПУС:=FАLSЕ; ЕХIТ ЕNDIF;
        IF СИМВ <> ПРОБЕЛ ТНЕN  ПРОПУС:=ТRUЕ;  ЕХIТ; ЕNDIF;

        WНILЕ СИМВ = ПРОБЕЛ DО
          ДАЙСИ;
        ЕNDWНILЕ;
        ПРОПУС := СИМВ <> LF;
      ЕND;

   (*  ЕND  ОF  ПРОПУС  *)



   FUNСТIОN  ВВ_ЛЕКСЕМ ( VАR ЛЕКСЕМА : РSТRING;
                         РАЗД1, РАЗД2 : СНАR ) : ВООL;

             (*

               ВВОД ПРОИЗВОЛЬНОЙ СТРОКИ

             *)

     VАR  I : INТ;

      ВЕGIN
        IF NОТ ПРОПУС ТНЕN ВВ_ЛЕКСЕМ := FАLSЕ; ЕХIТ
        ЕNDIF;

        I := 1; ВВ_ЛЕКСЕМ := ТRUЕ;

        WНILЕ  СИМВ <> LF DО
          IF  ( СИМВ = РАЗД1 ) ОR
              ( СИМВ = РАЗД2 ) ТНЕN
                                  ЛЕКСЕМА[I] := LF;
                                  ЕХIТ;
          ЕNDIF;

          ЛЕКСЕМА[I] := СИМВ;
          I := I + 1;
          ДАЙСИ;
        ЕNDWНILЕ;

        ЛЕКСЕМА[I] := LF;


    ЕND;        (*  ВВ_ЛЕКСЕМ  *)



    (*-----------------------------------*)



     РRОСЕDURЕ  ПЕРЕПИСЬ ( DR, DW, L : INТ );

      VАR
         ИСЧТ , ИСЗП   :    ВIТSЕТ;
         НУЗП , НУЧТ    :    INТ;
                   I    :    INТ;

     ВЕGIN

       НУЧТ := DR;
       НУЗП := DW;

       FОR I := 1 ТО L DО
         ИСЧТ := ВIТSЕТ ( НУЧТ )*[48-18..48-1] +
                 ВIТSЕТ(ЛЧТ)*[48-35..48-1] + [48-40];
         ИСЗП := ВIТSЕТ ( НУЗП )*[48-18..48-1] +
                 ВIТSЕТ(ЛЧТ)*[48-35..48-1];
         ВЕSМ ( Э70 : ИСЧТ );
         ВЕSМ ( Э70 : ИСЗП );
         WRIТЕLN ( НУЧТ МОD ДВА12 : 4 ОСТ, ’ ====> ’,
                   НУЗП МОD ДВА12 : 4 ОСТ );
         НУЧТ := НУЧТ + 1;
         НУЗП := НУЗП + 1;
       ЕNDFОR;

     ЕND;                 (***  ПЕРЕПИСЬ  ***)


  (* ----------------------------------------------- *)


    РRОСЕDURЕ РОСПИСЬ ( НУЗЗЗ : INТ );

    VАR     КТЛ [76000В] : АRRАУ 0..1023 ОF INТ;
         ОГЛКТЛ [76000В] : АLFА;
         ПРИКТЛ [77000В] : INТ;
           ФЗОН [76002В] : INТ;
                       I : INТ;
                    ИСЧТ : ВIТSЕТ;

       ВЕGIN

         ИСЧТ := ВIТSЕТ( ЛЧТ + НУЗЗЗ) * [48-41..48-1];
         ВЕSМ ( Э70 : ИСЧТ );
         FОR I := 0 ТО 1023 DО
           КТЛ [I] := 0С;
         ЕNDFОR;

         ОГЛКТЛ[1] := ’_377’;
         ОГЛКТЛ[6] := ’_001’;
         ПРИКТЛ := 1С;
           ФЗОН := 1С;
         ИСЧТ := ИСЧТ - [48-40];
         ВЕSМ ( Э70 : ИСЧТ );

       ЕND;                 (*** РОСПИСЬ ***)

 (* ----------------------------------------------- *)

    РRОСЕDURЕ  ОUТ;
       ВЕGIN
         ВЕSМ ( 3000002В );
       ЕND;



  (*------------------------------------------------*)


   FUNСТIОN   ОШМОН ( КО : INТ ) : ВООL;

     VАR   ТОШ : РSТRING;

      ВЕGIN
        ОШМОН := ( КО <> 0 );
        IF КО = 0 ТНЕN ЕХIТ ЕNDIF;
        ЕRRОR ( КО, ТОШ );
        WRIТЕLN ( ТОШ );
      ЕND;                (***  ОШМОН  ***)

  (*---------------------------------------------------*)

   РRОСЕDURЕ  РRINТF ( VАR NАМЕ : WОRD3 );

    VАR ТИП : АLFА;

     ВЕGIN
       ТИП := NАМЕ.ТИПФ;
       ТИП[6] := ПРОБЕЛ;
       WRIТЕ ( NАМЕ.NL,’/’,NАМЕ.NF,’.’,
               ТИП );
     ЕND;          (***  РRINТF ***)

  (*-----------------------------------------------*)


  (* ================= РRОGRАМ ==================== *)


   ВЕGIN

     WRIТЕLN; WRIТЕLN ( ФИШКА ); WRIТЕLN;
     GЕТ_СМD_LINЕ ( INРUТ );
     ДАЙСИ;
     IF NОТ ВВ_ЛЕКСЕМ ( ИМЯ, ПРОБЕЛ, ПРОБЕЛ ) ТНЕN
            WRIТЕLN (’    ВЫЗОВ ПРОГРАММЫ ОСУЩЕСТВЛЯЕТСЯ ТАК:’);
            WRIТЕLN (’          СОРУ <ОБРАЗ ФАЙЛА> <БИБЛИОТЕКА ЗАПИСИ>’);
            ВЕSМ ( 3000002В);
     ЕNDIF;


     IF NОТ ВВ_ЛЕКСЕМ( ИМЯ_W, ПРОБЕЛ, ПРОБЕЛ ) ТНЕN

                      WRIТЕLN (’ НЕ УКАЗАНЫ КООРДИНАТЫ ЗАПИСИ’);
                      ОUТ;

     ЕNDIF;

     LIВWRIТЕ := П6П;
     I := 1;
     ОNLУ_LIВ := FАLSЕ;

     (Ц) WНILЕ ((ИМЯ_W[I] <> LF) ∧ (ИМЯ_W[I] <> ПРОБЕЛ)) DО

           ОNLУ_LIВ := (ИМЯ_W[I] = SLАSН);
           IF ОNLУ_LIВ ТНЕN ЕХIТ Ц ЕNDIF;
           IF I >= 7 ТНЕN ЕХIТ Ц ЕNDIF;
           LIВWRIТЕ[I] := ИМЯ_W[I];
           I := I + 1;

       ЕNDWНILЕ;

     ОNLУ_LIВ := ОNLУ_LIВ ∧
               ((ИМЯ_W[I+1] = LF) ОR (ИМЯ_W[I+1] = ПРОБЕЛ));
     IF NОТ ОNLУ_LIВ ТНЕN

               IF ОШМОН( МКNАМЕ( ИМЯ_W, АСТIVЕ_LIВRАRУ,
                                 ’КОД  _000’, NАМЕ_W )) ТНЕN
                                             ОUТ;
               ЕNDIF;

               LIВWRIТЕ := NАМЕ_W.NL;

     ЕNDIF;



     IF ОШМОН ( FIRSТF ( ИМЯ, АСТIVЕ_LIВRАRУ, ’КОД  _000’, NАМЕ )) ТНЕN
             ОUТ;
     ЕNDIF;

     IF ОNLУ_LIВ ТНЕN

                   NАМЕ_W.NL := LIВWRIТЕ;
                   NАМЕ_W.NF := NАМЕ.NF;
                   NАМЕ_W.ТИПФ := NАМЕ.ТИПФ;

     ЕNDIF;

     НУЗЗЗW := 0;
     КО := LIВ ( LIВWRIТЕ, НУЗЗЗW );
     IF КО <> 5  ТНЕN             (* НЕТ ЛОГ. ИМЕНИ БИБЛИОТЕКИ *)
            IF  ОШМОН(КО) ТНЕN ОUТ ЕNDIF;
     ЕNDIF;

     КО := ОРЕNF ( NАМЕ_W , ТRUЕ , DW );
     IF КО = 13 ТНЕN
            WRIТЕLN (’ КАТАЛОГ ЗАПИСИ ИСПОРЧЕН’);
            RЕWRIТЕ ( INРUТ );
            WRIТЕ ( INРUТ,’РАСПИСАТЬ° ( "RЕТURN" = ДА )- ’);
            РАSВIND ( INРUТ );
            IF NОТ ЕОLN ( INРUТ ) ТНЕN
                          ВЕSМ ( 3000002В );
            ЕNDIF;
            РОСПИСЬ ( НУЗЗЗW );
     ЕNDIF;


     WНILЕ ТRUЕ DО
       РRINТF ( NАМЕ ); WRIТЕ (’ ---> ’);
       РRINТF ( NАМЕ_W ); WRIТЕLN;
       RЕWRIТЕ ( INРUТ );
       WRIТЕ ( INРUТ, ’О’’КЕУ°("RЕТURN" = ДА)- ’);
       РАSВIND ( INРUТ );
       IF NОТ ЕОLN ( INРUТ ) ТНЕN GОТО 1 ЕNDIF;

       IF ОШМОН ( ОРЕNF ( NАМЕ, FАLSЕ, DR ) ) ТНЕN GОТО 1 ЕNDIF;
       LR := DR DIV ДВА18;
       КО := МАКЕF ( NАМЕ_W , LR, DW );
       IF ( ОШМОН (КО) ) ∧ ( КО <> 11 ) ТНЕN GОТО 1 ЕNDIF;
       LW := DW DIV ДВА18;
       IF КО = 0 ТНЕN ПЕРЕПИСЬ ( DR, DW, LW )
                 ЕLSЕ


      (*   ФАЙЛ ЗАПИСИ СУЩЕСТВУЕТ   *)

                    IF NОТ ОШМОН ( ОРЕNF ( NАМЕ_W, ТRUЕ, DW ) ) ТНЕN
                                    LW := DW DIV ДВА18;
                                                                ЕLSЕ
                                    GОТО 1;
                    ЕNDIF;

                    IF LW < LR ТНЕN
                       WRIТЕLN (’ДЛ. ЧТ. > ДЛ. ЗП. (’,
                                 LR : 4 ОСТ, ’,’, LW : 4 ОСТ, ’)’ );
                               ЕLSЕ
                       RЕWRIТЕ ( INРUТ );
                       WRIТЕ ( INРUТ,’ПИСАТЬ°("RЕТURN" = ДА)- ’);
                       РАSВIND ( INРUТ );
                       IF NОТ ЕОLN ( INРUТ ) ТНЕN GОТО 1 ЕNDIF;
                       ПЕРЕПИСЬ ( DR, DW, LW );
                    ЕNDIF;

       ЕNDIF;

       1:
       IF ОШМОН ( NЕХТF ( NАМЕ ) ) ТНЕN ОUТ ЕNDIF;
       IF NОТ ОNLУ_LIВ ТНЕN

          WRIТЕLN (’ ВОЗМОЖНО КОПИРОВАНИЕ ТОЛЬКО ОДНОГО ФАЙЛА’);
          ОUТ;

                       ЕLSЕ

          NАМЕ_W.NL := LIВWRIТЕ;
          NАМЕ_W.NF := NАМЕ.NF;
          NАМЕ_W.ТИПФ := NАМЕ.ТИПФ;

       ЕNDIF;


     ЕNDWНILЕ;

  ЕND.
 *ТАВLЕ:Р/СОDЕR(W*420050,L*3)
 *МАIN РАSСОDЕR
 *ЕХЕСUТЕ
 *ЕND F

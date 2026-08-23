
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Playspaces }
using { /Fortnite.com/Characters }
using { /Fortnite.com/Game }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /UnrealEngine.com/Temporary/UI }
using { /Fortnite.com/UI }
using { /Verse.org/Colors }
using { /Verse.org/Random }
using { /Fortnite.com/Vehicles }
using { /Verse.org/Assets }
using { /Fortnite.com/FortPlayerUtilities }
# See https://dev.epicgames.com/documentation/en-us/uefn/create-your-own-device-in-verse for how to create a verse device.

# A Verse-authored creative device that can be placed in a level
newski : = class(creative_device):
    var PlayerSounds:[int]player = map{}
    var PlayerCan:[player]canvas = map{}
    var PlayerCan2:[player]canvas = map{}
    var PlayerCan3:[player]canvas = map{}
    var PlayerCan5:[player]canvas = map{}
    var PlayerHud:[player]int = map{}
    var PlayerAlive:[player]int = map{}
    var Playerwatching:[player]int = map{}
    var Teamy:int = 0
    var Nickcheck:int = 0
    var MJ:int = 0
    var Shakenum:int = 0
    @editable
    Mover:prop_mover_device = prop_mover_device{}
    @editable
    BombProp:creative_prop = creative_prop{}
    @editable
    LightningProp:creative_prop = creative_prop{}
    @editable
    Remy:item_remover_device = item_remover_device{}
    @editable
    KaiR:signal_remote_manager_device = signal_remote_manager_device{}
    @editable
    TfueR:signal_remote_manager_device = signal_remote_manager_device{}
    @editable
    JoeR:signal_remote_manager_device = signal_remote_manager_device{}
    @editable
    TateR:signal_remote_manager_device = signal_remote_manager_device{}
    @editable
    PewdR:signal_remote_manager_device = signal_remote_manager_device{}
    @editable
    Huds:hud_message_device = hud_message_device{}
    @editable
    JackCin:hud_message_device = hud_message_device{}
    @editable
    Muty:mutator_zone_device = mutator_zone_device{}
    @editable
    Vis:visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable
    Vec:vehicle_spawner_octane_device = vehicle_spawner_octane_device{}
    @editable
    Marker:player_marker_device = player_marker_device{}
    @editable
    JoeBlow:explosive_device = explosive_device{}
    @editable
    Bars:[]barrier_device = array{}
    @editable
    Accolade:accolades_device = accolades_device{}
    @editable
    Moner:automated_turret_device = automated_turret_device{}
    @editable
    NormGranter:item_granter_device = item_granter_device{}
    @editable
    MoveSpeed:movement_modulator_device = movement_modulator_device{}
    @editable
    MoveTim:movement_modulator_device = movement_modulator_device{}
    @editable
    MoveTes:movement_modulator_device = movement_modulator_device{}
    @editable
    Movey:movement_modulator_device = movement_modulator_device{}
    @editable
    JoeGranter:item_granter_device = item_granter_device{}
    @editable
    DreamCheck:conditional_button_device = conditional_button_device{}
    @editable
    PewdCheck:conditional_button_device = conditional_button_device{}
    @editable
    AliCheck:conditional_button_device = conditional_button_device{}
    @editable
    KaiGranter:item_granter_device = item_granter_device{}
    @editable
    TateGranter:item_granter_device = item_granter_device{}
    @editable
    TfueGranter:item_granter_device = item_granter_device{}
    @editable
    NickmercGranter:item_granter_device = item_granter_device{}
    @editable
    Mut:mutator_zone_device = mutator_zone_device{}
    @editable
    DPGranter:item_granter_device = item_granter_device{}
    @editable
    KhanGranter:item_granter_device = item_granter_device{}
    @editable
    GeorgeGranter:item_granter_device = item_granter_device{}
    @editable
    PewdGranter:item_granter_device = item_granter_device{}
    @editable
    NewPewdGranter:item_granter_device = item_granter_device{}

    @editable
    DreamGranter:item_granter_device = item_granter_device{}
    @editable
    BeastGranter:item_granter_device = item_granter_device{}


    @editable
    JackAudio:audio_player_device = audio_player_device{}
    @editable
    LightAudio:audio_player_device = audio_player_device{}
    @editable
    KellerAudio:audio_player_device = audio_player_device{}
    @editable
    MLKA:audio_player_device = audio_player_device{}
    @editable
    Trigger:trigger_device = trigger_device{}
    @editable
    Teams:[]class_and_team_selector_device = array{}
    @editable
    DuoTeam:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    KSIclass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    Adinclass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    Tateclass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    ShakeTeam:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    NormClass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    Swat:guard_spawner_device = guard_spawner_device{}
    @editable
    Bradclass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    Classin:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    Dudeclass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    Beastclass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    Nickclass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    Ninjaclass:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    SwatTeam:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    MonaTeam:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    BenTeam:class_and_team_selector_device = class_and_team_selector_device{}
    @editable
    TeleporterKai:teleporter_device = teleporter_device{}
    @editable
    TeleporterHorse:teleporter_device = teleporter_device{}
    @editable
    EndGam:end_game_device = end_game_device{}
    @editable
    TeleporterTfue:teleporter_device = teleporter_device{}
    @editable
    NinTele:teleporter_device = teleporter_device{}
    @editable
    Countdown:timer_device = timer_device{}
    @editable
    Damage:damage_amplifier_powerup_device = damage_amplifier_powerup_device{}
    @editable
    Dumy:damage_volume_device = damage_volume_device{}
    @editable
    Damage2:damage_amplifier_powerup_device = damage_amplifier_powerup_device{}
    @editable
    Dem2:damage_amplifier_powerup_device = damage_amplifier_powerup_device{}
    @editable
    JumpScare:cinematic_sequence_device = cinematic_sequence_device{}
    @editable
    Trojan:cinematic_sequence_device = cinematic_sequence_device{}
    @editable
    Keller:cinematic_sequence_device = cinematic_sequence_device{}
    @editable
    Tescin:cinematic_sequence_device = cinematic_sequence_device{}

    @editable
    Bom:cinematic_sequence_device = cinematic_sequence_device{}
    @editable
    Time:cinematic_sequence_device = cinematic_sequence_device{}
    var SantasNum:[]int = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}

    var SantasNum45:[]int = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
    # Runs when the device is started in a running game

    Playerelimed(Agent:elimination_result):void ={

    Print("tswift")

       Elimed : = Agent.EliminatedCharacter
        Elim : = Agent.EliminatingCharacter
          if(Act : = Elim?, Real : = Act.GetAgent[], Real2 : = Elimed.GetAgent[] , Player1 : = player[Real], Player2 : = player[Real2]):
           AllPlayers : = GetPlayspace().GetPlayers()
                 if(set PlayerAlive[Player2] = 0):
                  if(Jake : = PlayerSounds[17]):
                     if(Jake = Player1):
                      if(Shakenum = 0):
                         Rot : = Elimed.GetViewRotation()
                        Pro : = Act.GetTransform().Translation
                        ShakeTeam.ChangeTeam(Player1)
                        if(set PlayerAlive[Player2] = 1):
                        ShakeTeam.ChangeTeam(Player2)
                        set Shakenum = 1
                        spawn:
                          Spree(Player2, Pro, Rot)
                   Print("setted")
               if(Jake : = PlayerSounds[6]):
                if(Jake = Player2):
                     NormGranter.GrantItem(Player2)
                      set Nickcheck += 1
                       if(Nickcheck = 1):
                        if(set PlayerAlive[Player2] = 1):
                       else:
                       # spawn:
                       #  PutScroll1(Player2)
           if(PlayerAlive[Player2] = 0):
             #spawn:
              # PutScroll1(Player2)


    }
    Spree(Player2:player, Vect:vector3, Yot:rotation)<suspends>:void =
      {
       Sleep(2.0)
         Player2.Respawn(Vect, Yot)
         NormGranter.GrantItem(Player2)
      }
    nock(Dam:damage_result):void =
        {

        Print("damaged")
           if(Targ : = fort_character[Dam.Target]):

            if(Targy : = Targ.GetAgent[]):
             if(Inst1 : = fort_character[Dam.Instigator?]):
                if(Inst2 : = Inst1.GetAgent[]):
                    if(Playa2 : = player[Inst2]):
                      if(Playa : = player[Targy]):


                             if(Ali : = PlayerSounds[15]):
                                              if(Ali = Playa2):
                                                if(Ali = Playa):
                                                else:
                                                  if(AliCheck.IsHoldingItem[Ali]):
                                                    if(po : = Playa.GetFortCharacter[]):
                                                       Op : = po.SetShield(0.0)
                             if(Abe : = PlayerSounds[16]):
                                        if(Abe = Playa):
                                         if(Abe = Playa2) :
                                         else:
                                                  Randy : = GetRandomInt(0, 2)
                                                    if(Randy = 0):
                                                     Da : = Dam.Amount
                                                      if(I : = Playa.GetFortCharacter[]):
                                                        Am : = I.GetShield()
                                                         I.SetShield(Am+ Da)
                             if(Dude : = PlayerSounds[0]):
                                                              if(Dude = Playa2):
                                                                 if(Dude = Playa):
                                                                  Print("nun")
                                                                 else:

                                                                   if(I : = Playa.GetFortCharacter[]):

                             if(Nap : = PlayerSounds[3]):
                                                                      if(Nap = Playa):
                                                                         if(Nap = Playa2):
                                                                          Print("nap")
                                                                         else:
                                                                           if(I : = Playa.GetFortCharacter[]):
                                                                             I.Hide()
                                                                             spawn:
                                                                              Napy(I)
                             if(Col : = PlayerSounds[9]):
                                              if(Col = Playa2):
                                                   if(Col = Playa):

                                                   else:
                                                       Am : = Dam.Amount
                                                           if(po : = Col.GetFortCharacter[]):
                                                                Op : = po.GetShield()
                                                                     po.SetShield(Op+Am)


        }
      Napy(Ch:fort_character)<suspends>:void =
        {

               Sleep(0.8)
                Ch.Show()
        }
      Hudloop()<suspends>:void =
            {
              loop:
               Sleep(1.0)

                AllPlayers : = GetPlayspace().GetPlayers()
                 for(X:AllPlayers):
                   if(Oh : = PlayerHud[X]):
                    if(Num : = PlayerAlive[X]):

                     if(Num = 1):
                      Spec : = X.GetPlayersSpectating()


                        for(Y:Spec):
                         if(X = Y):

                         else:
                           #if(Nut:= PlayerHud[Y]):
                             PowerUi(Y, Oh+1, 0)
                           #  if(Playerwatching[Y]= 0):
                            #  PutScroll1(Y)
                            # if(Playerwatching[Y]= 1):
                             #  PowerUi(Y,Nut+1,1)

             }

    Kai(Agent:agent):void =
      {
        var Big:float = 0.0
        var Clos:[int]player = map{}
          if(Playa : = Agent.GetFortCharacter[]):
            AllPlayers : = GetPlayspace().GetPlayers()
            Rotation : = Playa.GetViewRotation()
            Translation : = Playa.GetTransform().Translation
            # Randy:= GetRandomInt(0,AllPlayers.Length-1)
              for(U:AllPlayers):
               if(U = player[Agent] or PlayerAlive[U] = 0):
                Print("no")
               else:
                if(Playa2 : = U.GetFortCharacter[]):
                  Rotation2 : = Playa2.GetViewRotation()
                  TranslationX : = (Playa2.GetTransform().Translation.X-Translation.X)
                  TranslationY : = (Playa2.GetTransform().Translation.Y-Translation.X)
                  TranslationXR : = TranslationX* TranslationX/ TranslationX
                  TranslationYR : = TranslationY* TranslationY/ TranslationY
                  Print("{TranslationXR}")
                  Print("{TranslationYR}")
                     if(TranslationXR>TranslationY):
                        if(TranslationX>Big):
                           set Big = TranslationXR
                           if(set Clos[0] = U):

                     else:
                      if(TranslationYR>Big):
                        set Big = TranslationYR
                        if(set Clos[0] = U):
              if(TeleporterKai.TeleportTo[Translation, Rotation]):

                 if(Ind : = Clos[0]):
                    TeleporterKai.Teleport(Ind)
               Print("kaipow")

        }

    Dism()<suspends>:void ={
       Sleep(20.0)

    }
    TakeEin(Agent:agent)<suspends>:void =

      {
         Sleep(15.0)
           NormClass.ChangeClass(Agent)
      }
    TesLoop(Age:agent)<suspends>:void =
        {
          Huds.Show()
          var num:int = 0
           loop:
            set num += 1
               Sleep(0.3)
               AllPlayers : = GetPlayspace().GetPlayers()
                   Rand1 : = GetRandomInt(0, 360)
                   Rand2 : = GetRandomInt(0, 360)
                   Rand3 : = GetRandomInt(0, 360)
                   Uno : = MoveTes.GetTransform().Rotation.ApplyYaw(Rand1*1.0).ApplyRoll(Rand2*1.0).ApplyPitch(Rand3*1.0)

                   if(MoveTes.TeleportTo[vector3{X : = 50.0, Y : = 50.0, Z : = 50.0}, Uno]):
                   for(Y:AllPlayers):
                      if(Pl : = player[Age]):
                       if(PlayerAlive[Y] = 1):
                        if(Pl = Y):
                        else:


                           MoveTes.Activate(Y)
                if(num = 20):
                  break

        }
    Tate(Agent:agent):void =

      {
          AllPlayers : = GetPlayspace().GetPlayers()
          var Big:float = 0.0
          var Clos:[int]player = map{}
             if(T : = PlayerSounds[20]):

               if(Z : = player[Agent]):
                  if(Z = T):
                    Tescin.Play()
                Remy.Remove(Z)
                   spawn:
                    TesLoop(Agent)
             if(T : = PlayerSounds[19]):
                 if(Z : = player[Agent]):
                    if(Z = T):
                      Remy.Remove(Z)
                      spawn:
                       TeleK(Agent)
             if(T : = PlayerSounds[12]):
                  if(Z : = player[Agent]):
                      if(Z = T):
                         Time.Play()
                          Classin.ChangeClass(Agent)
                          Vis.Pickup(Agent)
                          Remy.Remove(Z)
                        spawn:
                          TakeEin(Agent)
             if(T : = PlayerSounds[11]):
                if(Z : = player[Agent]):
                  if(Z = T):
                     Moner.Enable()
                     Remy.Remove(Z)
                    spawn:
                     Dism()
             if(T : = PlayerSounds[5]):
               if(Z : = player[Agent]):
                if(Z = T):
                 if(Playa : = Agent.GetFortCharacter[]):
                     Rotation : = Playa.GetViewRotation()
                     Translation : = Playa.GetTransform().Translation
                     for(U:AllPlayers):
                      if(U = player[Agent] or PlayerAlive[U] = 0):
                       Print("no")
                      else:
                       if(Playa2 : = U.GetFortCharacter[]):
                         Rotation2 : = Playa2.GetViewRotation()
                         TranslationX : = (Playa2.GetTransform().Translation.X-Translation.X)
                         TranslationY : = (Playa2.GetTransform().Translation.Y-Translation.X)
                         TranslationXR : = TranslationX* TranslationX/ TranslationX
                         TranslationYR : = TranslationY* TranslationY/ TranslationY
                         Print("{TranslationXR}")
                         Print("{TranslationYR}")
                            if(TranslationXR>TranslationY):
                               if(TranslationX>Big):
                                  set Big = TranslationXR
                                  if(set Clos[0] = U):

                            else:
                             if(TranslationYR>Big):
                               set Big = TranslationYR
                               if(set Clos[0] = U):
                                Remy.Remove(Z)
               if(ZO : = Clos[0]):
                   Print("tatepow")
                   spawn:
                    Lightning(ZO)


      }
    Lightning(Age:player)<suspends>:void =

      {
        if(Playa2 : = Age.GetFortCharacter[]):
          Rotation2 : = Playa2.GetViewRotation()
          To : = Playa2.GetTransform().Translation
           if(LightningProp.TeleportTo[To, Rotation2]):
           Sleep(2.0)
                     AllPlayers : = GetPlayspace().GetPlayers()

                          for(X:AllPlayers):
                                 LightAudio.Play(X)
               Dumy.Enable()
            Sleep(1.0)
              if(LightningProp.TeleportTo[vector3{X : = 0.0, Y : = 0.0, Z : = 0.0}, Rotation2]):
                Dumy.Disable()
      }

     Alex(Agent:agent):void =
            {
               spawn:
                Alex2(Agent)
             }
     Alex2(Agent:agent)<suspends>:void =

        {

           Trojan.Play()
            TeleporterHorse.Teleport(Agent)
            Sleep(5.0)
            Mut.Enable()
            if(Playa : = Agent.GetFortCharacter[]):
              Rotation : = Playa.GetViewRotation()
                  if(Swat.TeleportTo[vector3{X : = -9600.0, Y : = -1120.0, Z : = 1440.0}, Rotation]):
                     Swat.Enable()
                     Swat.Spawn()
        }


    MLK2(Agent:agent)<suspends>:void =


       {
          if(Playa : = player[Agent]):
             AllPlayers : = GetPlayspace().GetPlayers()

                for(X:AllPlayers):
                 if(Playa = X or PlayerAlive[X] = 0):
                  MLKA.Play(X)
                 else:
                  MLKA.Play(X)
                   if(Pla : = X.GetFortCharacter[]):
                    Pla.PutInStasis(stasis_args{AllowTurning : = false})
             Sleep(2.0)
                for(X:AllPlayers):
                 if(Pla : = X.GetFortCharacter[]):
                    Pla.ReleaseFromStasis()
         }
    MLK(Agent:agent):void =


      {
          spawn:
                MLK2(Agent)


      }
    Opp1(Agent:agent):void =
      {
        spawn:
          Opp(Agent)


      }
    Opp(Agent:agent)<suspends>:void =
            {


                    Bom.Play()
                  Sleep(3.0)


                         JoeBlow.Reset()
                         JoeBlow.Explode(Agent)

                      Print("joepow")

            }


      Jack(Agent:agent):void =
         {
            if(Playa : = Agent.GetFortCharacter[]):
              Rotation : = Playa.GetViewRotation()
               Translation : = Playa.GetTransform().Translation

                AllPlayers : = GetPlayspace().GetPlayers()
                      for(X:AllPlayers):
                       if(PlayerAlive[X] = 1):
                        if(Playa2 : = X.GetFortCharacter[]):
                         Translation1 : = Playa2.GetTransform().Translation
                         FarX : = Translation.X - Translation1.X
                         FarY : = Translation.Y - Translation1.Y
                          if(FarX*FarX/FarX<1000.0 or FarY*FarY/FarY<1000.0):
                                        JackAudio.Play(X)
                                      spawn:
                                        JackCin1(X)


          }
      TeleK(Agent:agent)<suspends>:void =
                {
                  if(Playa : = Agent.GetFortCharacter[]):
                    Rotation : = Playa.GetViewRotation()
                    Translation : = Playa.GetTransform().Translation
                     if(NinTele.TeleportTo[vector3{X : = -10674.14719, Y : = -3386.738233, Z : = 5081.737314}, Rotation]):
                        NinTele.Teleport(Agent)
                        Countdown.Start(Agent)
                    Sleep(15.0)

                       if(NinTele.TeleportTo[Translation, Rotation]):
                        NinTele.Teleport(Agent)

                }


      Driz(Agent:agent):void =
                    {

                       if(Playa2 : = player[Agent]):
                        set MJ = 1
                               if(Dri : = PlayerSounds[18]):
                                 if(Dri = Playa2):
                                    if(Playa : = Agent.GetFortCharacter[]):
                                        Rotation : = Playa.GetViewRotation()
                                        Translation : = Playa.GetTransform().Translation

                                    spawn:
                                     MJLoop(Agent)

                    }
      MJLoop(Agent:agent)<suspends>:void =
        {
              loop:
                Sleep(1.0)
                if(Playa : = Agent.GetFortCharacter[]):
                  Op : = Playa.GetShield()
                    Playa.SetShield(Op+5.0)

                    Playa.Heal(5.0)
                if(MJ = 0):
                  break

        }
      Driz2(Agent:agent):void =
                        {

                           if(Playa2 : = player[Agent]):
                            if(Playa : = Agent.GetFortCharacter[]):
                                Rotation : = Playa.GetViewRotation()
                                Translation : = Playa.GetTransform().Translation
                                   if(Dri : = PlayerSounds[22]):
                                     if(Dri = Playa2):
                             set MJ = 0

                        }
      HandleSelectedUIButton(Playa:widget_message):void ={
                          Plu : = Playa.Player
                            if(Age : = agent[Plu]):
                             if(Age2 : = Age.GetFortCharacter[]):
                              if(Nu : = PlayerHud[Plu]):
                                if(PlayerUI : = GetPlayerUI[Plu], FortCharacte : = Plu.GetFortCharacter[]):
                                  if(Can : = PlayerCan3[Plu]):
                                    Print("widgRemoved")
                                           PlayerUI.RemoveWidget(Can)
                                           if(set Playerwatching[Plu] = 0):
                                if(set Playerwatching[Plu] = 1):
                                    PowerUi(Plu, Nu+1, 1)


      }
      HandleSelectedUIButton2(Playa:widget_message):void ={

              Plu : = Playa.Player
              if(Age : = agent[Plu]):
                  if(Age2 : = Age.GetFortCharacter[]):
                     if(Nu : = PlayerHud[Plu]):

                       if(PlayerUI : = GetPlayerUI[Plu], FortCharacte : = Plu.GetFortCharacter[]):
                             if(Can : = PlayerCan2[Plu]):
                               Print("widgRemoved")
                                      PlayerUI.RemoveWidget(Can)
                                      if(set Playerwatching[Plu] = 0):


        }
      TextForMyUI<localizes>:message ="More Info"
      TextForMyUI2<localizes>:message ="Exit"
      JackCin1(Playa:player)<suspends>:void =
        {

        BarInvis:texture = text.JACKSTER
        BarSlotInvis : = texture_block{
        DefaultImage : = BarInvis,
        DefaultDesiredSize : = vector2{X : = 1950.0, Y : = 1350.0}}
         Canvas9:canvas = canvas:

          Slots : = array:
           canvas_slot:
            Anchors : = anchors{Minimum : = vector2{X : = 0.5, Y : = 0.5}, Maximum : = vector2{X : = 0.5, Y : = 0.5}}
            Offsets : = margin{Top : = 90.0, Left : = 0.0, Right : = 0.0, Bottom : = 0.0}
            Alignment : = vector2{X : = 0.5, Y : = 0.5}
            Widget : = overlay:
             Slots : = array:
              overlay_slot:

                 HorizontalAlignment : = horizontal_alignment.Center
                   Widget : = BarSlotInvis
                   Padding : = margin{Top : = 0.0, Left : = 0.0}


         if(PlayerUI : = GetPlayerUI[Playa], FortCharacte : = Playa.GetFortCharacter[]):
                       if(Can : = PlayerCan5[Playa]):
                              Print("")
                                     PlayerUI.RemoveWidget(Can)
                  PlayerUI.AddWidget(Canvas9)
                    if(set PlayerCan5[Playa] = Canvas9):
                Sleep(3.0)
                if(Can : = PlayerCan5[Playa]):
                  Print("jack")
                         PlayerUI.RemoveWidget(Can)

        }


    PowerUi(Playa:player, Num:int, Num2:int):void =
      MyUIButton2:button_loud = button_loud{DefaultText : = TextForMyUI2}

         MyUIButton2.OnClick().Subscribe(HandleSelectedUIButton2)
       var Fl:float = 520.0
            BarInvis:texture = text3.Oney
            BarSlotInvis : = texture_block{
           DefaultImage : = BarInvis,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarReload:texture = text3.two
            BarSlotReload : = texture_block{
           DefaultImage : = BarReload,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarSpeed:texture = text3.three
            BarSlotSpeed : = texture_block{
           DefaultImage : = BarSpeed,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarShield:texture = text3.four
            BarSlotShield : = texture_block{
           DefaultImage : = BarShield,
            DefaultDesiredSize : = vector2{X : = Fl , Y : = 208.0}}
            BarDamage:texture = text3.five
            BarSlotDamage : = texture_block{
           DefaultImage : = BarDamage,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarInvis2:texture = text3.six
            BarSlotInvis2 : = texture_block{
            DefaultImage : = BarInvis2,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarReload2:texture = text3.seven
            BarSlotReload2 : = texture_block{
           DefaultImage : = BarReload2,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarSpeed2:texture = text3.eight
            BarSlotSpeed2 : = texture_block{
           DefaultImage : = BarSpeed2,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarShield2:texture = text3.nine
            BarSlotShield2 : = texture_block{
           DefaultImage : = BarShield2,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarDamage2:texture = text3.ten
            BarSlotDamage2 : = texture_block{
            DefaultImage : = BarDamage2,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarInvis4:texture = text3.eleven
            BarSlotInvis4 : = texture_block{
           DefaultImage : = BarInvis4,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarReload4:texture = text3.twelve
            BarSlotReload4 : = texture_block{
           DefaultImage : = BarReload4,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarSpeed4:texture = text3.thirteen
            BarSlotSpeed4 : = texture_block{
           DefaultImage : = BarSpeed4,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarShield4:texture = text3.fourteen
            BarSlotShield4 : = texture_block{
           DefaultImage : = BarShield4,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarDamage4:texture = text3.fifteen
            BarSlotDamage4 : = texture_block{
           DefaultImage : = BarDamage4,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarInvis3:texture = text3.sixteeny
            BarSlotInvis3 : = texture_block{
            DefaultImage : = BarInvis3,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarReload3:texture = text3.seventeen
            BarSlotReload3 : = texture_block{
           DefaultImage : = BarReload3,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarSpeed3:texture = text3.eighteen
            BarSlotSpeed3 : = texture_block{
           DefaultImage : = BarSpeed3,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarShield3:texture = text3.nineteen
            BarSlotShield3 : = texture_block{
           DefaultImage : = BarShield3,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarDamage3:texture = text3.twenty
            BarSlotDamage3 : = texture_block{
           DefaultImage : = BarDamage3,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarInvis5:texture = text3.twentyone
            BarSlotInvis5 : = texture_block{
           DefaultImage : = BarInvis5,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}

            BarInvis7:texture = text2.three
            BarSlotInvis7 : = texture_block{
           DefaultImage : = BarInvis5,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarInvis8:texture = text2.four
            BarSlotInvis8 : = texture_block{
           DefaultImage : = BarInvis5,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            BarInvis9:texture = text2.five
            BarSlotInvis9 : = texture_block{
           DefaultImage : = BarInvis5,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar1:texture = text2.one
            BarSlot1 : = texture_block{
           DefaultImage : = Bar1,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar2:texture = text2.two
            BarSlot2 : = texture_block{
           DefaultImage : = Bar2,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar3:texture = text2.three
            BarSlot3 : = texture_block{
           DefaultImage : = Bar3,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar4:texture = text2.four
            BarSlot4 : = texture_block{
           DefaultImage : = Bar4,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar5:texture = text2.five
            BarSlot5 : = texture_block{
           DefaultImage : = Bar5,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar6:texture = text2.six
            BarSlot6 : = texture_block{
           DefaultImage : = Bar6,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar7:texture = text2.seven
            BarSlot7 : = texture_block{
           DefaultImage : = Bar7,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar8:texture = text2.eight
            BarSlot8 : = texture_block{
           DefaultImage : = Bar8,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar9:texture = text2.nine
            BarSlot9 : = texture_block{
           DefaultImage : = Bar9,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar10:texture = text2.ten
            BarSlot10 : = texture_block{
           DefaultImage : = Bar10,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar11:texture = text2.eleven
            BarSlot11 : = texture_block{
           DefaultImage : = Bar11,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar12:texture = text2.twelve
            BarSlot12 : = texture_block{
           DefaultImage : = Bar12,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar13:texture = text2.thirteen
            BarSlot13 : = texture_block{
           DefaultImage : = Bar13,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar14:texture = text2.fourteen
            BarSlot14 : = texture_block{
           DefaultImage : = Bar14,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar15:texture = text2.fifteen
            BarSlot15 : = texture_block{
           DefaultImage : = Bar15,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar16:texture = text2.sixteen
            BarSlot16 : = texture_block{
           DefaultImage : = Bar16,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar17:texture = text2.seventeen
            BarSlot17 : = texture_block{
           DefaultImage : = Bar17,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar18:texture = text2.eighteen
            BarSlot18 : = texture_block{
           DefaultImage : = Bar18,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar19:texture = text2.nineteen
            BarSlot19 : = texture_block{
           DefaultImage : = Bar19,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 208.0}}
            Bar20:texture = text2.twenty
            BarSlot20 : = texture_block{
           DefaultImage : = Bar20,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 500.0}}
            Bar21:texture = text2.twentyone
            BarSlot21 : = texture_block{
           DefaultImage : = Bar21,
            DefaultDesiredSize : = vector2{X : = Fl, Y : = 500.0}}

             var Texty:texture_block = BarSlotDamage
             var Texty2:texture_block = BarSlotDamage


                      if(Num = 1):
                              set Texty = BarSlotInvis
                              set Texty2 = BarSlot1
                      if(Num = 2):
                            set Texty = BarSlotReload
                            set Texty2 = BarSlot2
                      if(Num = 3):
                            set Texty = BarSlotSpeed
                            set Texty2 = BarSlot3
                      if(Num = 4):
                            set Texty = BarSlotShield
                            set Texty2 = BarSlot4
                      if(Num = 5):
                              set Texty = BarSlotDamage
                              set Texty2 = BarSlot5
                      if(Num = 6):
                                set Texty = BarSlotInvis2
                                set Texty2 = BarSlot6
                      if(Num = 7):
                              set Texty = BarSlotReload2
                              set Texty2 = BarSlot7
                      if(Num = 8):
                              set Texty = BarSlotSpeed2
                              set Texty2 = BarSlot8
                      if(Num = 9):
                              set Texty = BarSlotShield2
                              set Texty2 = BarSlot9
                      if(Num = 10):
                                set Texty = BarSlotDamage2
                                set Texty2 = BarSlot10
                      if(Num = 11):
                                    set Texty = BarSlotInvis4
                                    set Texty2 = BarSlot11
                      if(Num = 12):
                                  set Texty = BarSlotReload4
                                  set Texty2 = BarSlot12
                      if(Num = 13):
                                  set Texty = BarSlotSpeed4
                                  set Texty2 = BarSlot13
                      if(Num = 14):
                                  set Texty = BarSlotShield4
                                  set Texty2 = BarSlot14
                      if(Num = 15):
                                    set Texty = BarSlotDamage4
                                    set Texty2 = BarSlot15
                      if(Num = 16):
                                      set Texty = BarSlotInvis3
                                      set Texty2 = BarSlot16
                      if(Num = 17):
                                    set Texty = BarSlotReload3
                                    set Texty2 = BarSlot17
                      if(Num = 18):
                                    set Texty = BarSlotSpeed3
                                    set Texty2 = BarSlot18
                      if(Num = 19):
                                        set Texty = BarSlotShield3
                                        set Texty2 = BarSlot19

                      if(Num = 20):
                                          set Texty = BarSlotDamage3
                                          set Texty2 = BarSlot20
                      if(Num = 21):
                                            set Texty = BarSlotInvis5
                                            set Texty2 = BarSlot21


                    Canvas3:canvas = canvas:

                        Slots : = array:
                         canvas_slot:
                          Anchors : = anchors{Minimum : = vector2{X : = 0.14, Y : = 0.72}, Maximum : = vector2{X : = 0.14, Y : = 0.72}}
                          Offsets : = margin{Top : = 90.0, Left : = 0.0, Right : = 0.0, Bottom : = 0.0}
                          Alignment : = vector2{X : = 0.5, Y : = 0.5}
                          Widget : = overlay:
                           Slots : = array:
                            overlay_slot:

                               HorizontalAlignment : = horizontal_alignment.Center
                                 Widget : = Texty
                                 Padding : = margin{Top : = 0.0, Left : = 0.0}
                    Canvas7:canvas = canvas:

                                  Slots : = array:
                                   canvas_slot:
                                    Anchors : = anchors{Minimum : = vector2{X : = 0.14, Y : = 0.20}, Maximum : = vector2{X : = 0.14, Y : = 0.20}}
                                    Offsets : = margin{Top : = 90.0, Left : = 0.0, Right : = 0.0, Bottom : = 0.0}
                                    Alignment : = vector2{X : = 0.5, Y : = 0.5}
                                    Widget : = overlay:

                                      Slots : = array:
                                        overlay_slot:

                                            HorizontalAlignment : = horizontal_alignment.Center
                                              Widget : = Texty2
                                              Padding : = margin{Top : = 0.0, Left : = 0.0}


                 if(PlayerUI : = GetPlayerUI[Playa], FortCharacte : = Playa.GetFortCharacter[]):
                              if(Wid : = PlayerCan[Playa]):
                                   PlayerUI.RemoveWidget(Wid)
                          if(Num2 = 0):


                             PlayerUI.AddWidget(Canvas3)
                             if(set PlayerCan[Playa] = Canvas3):
                          if(Num2 = 1):
                                  if(Wid : = PlayerCan3[Playa]):
                                         PlayerUI.RemoveWidget(Wid)
                            PlayerUI.AddWidget(Canvas7)
                            if(set PlayerCan2[Playa] = Canvas7):


    Che(Agent:agent):void =
      {
        AllPlayers : = GetPlayspace().GetPlayers()
        Print("{AllPlayers.Length}")
         if(Pla : = AllPlayers[0]):
          if(AllPlayers.Length-1<=1):
            EndGam.Activate(Pla)
      }
    Add(Agent:agent):void ={
       if(set PlayerAlive[player[Agent]] = 0):
    }
    OnBegin<override>()<suspends>:void =


        KaiR.PrimarySignalEvent.Subscribe(MLK)
        TateR.PrimarySignalEvent.Subscribe(Tate)
        TfueR.PrimarySignalEvent.Subscribe(Alex)
        JoeR.PrimarySignalEvent.Subscribe(Opp1)
        PewdR.PrimarySignalEvent.Subscribe(Jack)
        Mut.AgentBeginsEmotingEvent.Subscribe(Driz)
        Mut.AgentEndsEmotingEvent.Subscribe(Driz2)

     AllPlayers : = GetPlayspace().GetPlayers()
     GetPlayspace().PlayerAddedEvent().Subscribe(Che)
     GetPlayspace().PlayerRemovedEvent().Subscribe(Add)
     var num:int = -1
        for(X:AllPlayers):
          if(set Playerwatching[X] = 0):
             if(set PlayerAlive[X] = 1):
            Accolade.Award(X)
            set num += 1
          if(Team : = Teams[num]):
            if(YU : = X.GetFortCharacter[]):
                YU.EliminatedEvent().Subscribe(Playerelimed)
                YU.DamagedEvent().Subscribe(nock)
                YU.DamagedShieldEvent().Subscribe(nock)


             Randy : = GetRandomInt(0, SantasNum.Length-1)

             if(Numy : = SantasNum[Randy]):
              if (NewArray : = SantasNum.RemoveElement[Randy]):
                set SantasNum = NewArray

              if(Numy = 0):
                PowerUi(X, 1, 0)

                Team.ChangeTeam(X)
                if(set PlayerSounds[0] = X):
                  if(set PlayerHud[X] = 0):
                Print("george washington")
                GeorgeGranter.GrantItem(X)
                Dudeclass.ChangeClass(X)
               Sleep(1.0)
                Dem2.Pickup(X)

              if(Numy = 1):
                PowerUi(X, 2, 0)

                Team.ChangeTeam(X)
                Print("oppenhiemer")
                if(set PlayerSounds[1] = X):
                  if(set PlayerHud[X] = 1):
                    JoeGranter.GrantItem(X)
                    DuoTeam.ChangeTeam(X)
              if(Numy = 2):
                PowerUi(X, 3, 0)

                KaiGranter.GrantItem(X)
                Team.ChangeTeam(X)
                if(set PlayerSounds[2] = X):
                  if(set PlayerHud[X] = 2):
                    Print("Mlk")

              if(Numy = 3):
                PowerUi(X, 4, 0)

                Print("napoleon")

                if(set PlayerSounds[3] = X):
                  if(set PlayerHud[X] = 3):
                Team.ChangeTeam(X)
                NormGranter.GrantItem(X)
              if(Numy = 4):
                Print("jacktheripper")
                PowerUi(X, 5, 0)

                    if(set PlayerSounds[4] = X):
                      if(set PlayerHud[X] = 4):
                    Team.ChangeTeam(X)
                    PewdGranter.GrantItem(X)
              if(Numy = 5):
                PowerUi(X, 6, 0)

                Print("benfrank")
                        if(set PlayerSounds[5] = X):
                          if(set PlayerHud[X] = 5):
                        BenTeam.ChangeTeam(X)
                        TateGranter.GrantItem(X)

              if(Numy = 6):
                Print("Mandela")
                PowerUi(X, 7, 0)

                            if(set PlayerSounds[6] = X):
                              if(set PlayerHud[X] = 6):
                            Team.ChangeTeam(X)
                            NormGranter.GrantItem(X)
                            Nickclass.ChangeClass(X)
              if(Numy = 7):
                Print("ALEXANDERTHEGREAT")
                PowerUi(X, 8, 0)

                                if(set PlayerSounds[7] = X):
                                  if(set PlayerHud[X] = 7):
                                SwatTeam.ChangeTeam(X)
                                TfueGranter.GrantItem(X)
              if(Numy = 8):
                Print("Hellenkeler")
                PowerUi(X, 9, 0)
               KellerAudio.Play(X)
               Keller.Play(X)
                                    if(set PlayerSounds[8] = X):
                                      if(set PlayerHud[X] = 8):
                                    Team.ChangeTeam(X)
                                    NormGranter.GrantItem(X)
                                    Bradclass.ChangeClass(X)
              if(Numy = 9):
                  Print("columbos")
                  PowerUi(X, 10, 0)

                                        if(set PlayerSounds[9] = X):
                                          if(set PlayerHud[X] = 9):
                                        Team.ChangeTeam(X)
                                        NormGranter.GrantItem(X)
              if(Numy = 10):
                   Print("khan")
                   PowerUi(X, 11, 0)

                   KSIclass.ChangeClass(X)
                                            if(set PlayerSounds[10] = X):
                                              if(set PlayerHud[X] = 10):
                                            Team.ChangeTeam(X)
                                            KhanGranter.GrantItem(X)
              if(Numy = 11):
                 Print("davinci")
                 PowerUi(X, 12, 0)

                                                if(set PlayerSounds[11] = X):
                                                  if(set PlayerHud[X] = 11):
                                                MonaTeam.ChangeTeam(X)
                                                TateGranter.GrantItem(X)
              if(Numy = 12):
                Print("einstien")
                PowerUi(X, 13, 0)

                                                    if(set PlayerSounds[12] = X):
                                                      if(set PlayerHud[X] = 12):
                                                    Team.ChangeTeam(X)
                                                    TateGranter.GrantItem(X)

              if(Numy = 13):
                Print("newton")
                PowerUi(X, 14, 0)


                                                        if(set PlayerSounds[13] = X):
                                                          if(set PlayerHud[X] = 13):
                                                        Team.ChangeTeam(X)
                                                        NormGranter.GrantItem(X)
                                                        Adinclass.ChangeClass(X)
                                                        Trigger.Trigger(X)
              if(Numy = 14):
                Print("ceasar")
                PowerUi(X, 15, 0)

                                                            if(set PlayerSounds[14] = X):
                                                              if(set PlayerHud[X] = 14):
                                                            Team.ChangeTeam(X)
                                                            NickmercGranter.GrantItem(X)
              if(Numy = 15):
                 Print("ali")
                 PowerUi(X, 16, 0)

                                                                if(set PlayerSounds[15] = X):
                                                                  if(set PlayerHud[X] = 15):
                                                                Team.ChangeTeam(X)
                                                                NormGranter.GrantItem(X)

              if(Numy = 16):
                Print("lincoln")
                 set Teamy = 1
                 PowerUi(X, 17, 0)

                                                                  if(set PlayerSounds[16] = X):
                                                                    if(set PlayerHud[X] = 16):
                                                                      Team.ChangeTeam(X)
                                                                    NormGranter.GrantItem(X)
              if(Numy = 17):
                Print("shakespear")
                 PowerUi(X, 18, 0)
                  if(set PlayerSounds[17] = X):
                  if(set PlayerHud[X] = 17):
                  Team.ChangeTeam(X)
                  NormGranter.GrantItem(X)

              if(Numy = 18):
                                              Print("jackson")

                                                  PowerUi(X, 19, 0)


                                                                                                  if(set PlayerSounds[18] = X):
                                                                                                    if(set PlayerHud[X] = 18):
                                                                                                    Team.ChangeTeam(X)
                                                                                                    NormGranter.GrantItem(X)
              if(Numy = 19):
                                                                                                      Print("kingtut")

                                                                                                          PowerUi(X, 20, 0)


                                                                                                                                 if(set PlayerSounds[19] = X):
                                                                                                                                         if(set PlayerHud[X] = 19):
                                                                                                                                               Team.ChangeTeam(X)
                                                                                                                                               TateGranter.GrantItem(X)
              if(Numy = 20):
                                                                                                                                                Print("tesla")

                                                                                                                                                    PowerUi(X, 21, 0)
                                                                                                                                                    Team.ChangeTeam(X)

                                                                                                                                                                           if(set PlayerSounds[20] = X):
                                                                                                                                                                                   if(set PlayerHud[X] = 20):
                                                                                                                                                                              TateGranter.GrantItem(X)
      Moner.Disable()
     Sleep(8.0)

      for(L:Bars):
        L.Disable()
      KaiR.Enable()
      TateR.Enable()
      TfueR.Enable()
      JoeR.Enable()
      PewdR.Enable()
     spawn:
      Hudloop()

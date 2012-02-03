.class Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAVRCPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    if-nez p2, :cond_1

    .line 159
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local p0
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, action:Ljava/lang/String;
    const-string v16, "BluetoothAVRCPService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "broadcom avrcp testing intent received: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v16, "cmd"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 97
    const-string v16, "BluetoothAVRCPService"

    const-string v17, "cannot find cmd in intent"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    const-string v16, "cmd"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 102
    .local v7, cmd:Ljava/lang/String;
    const-string v16, "BluetoothAVRCPService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "broadcom avrcp testing cmd received: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getCurrentPlayer()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v13

    .line 105
    .local v13, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    const-string v16, "BluetoothAVRCPService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MediaPlayerManager.getPlayer() return "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v18

    :goto_1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v16, "launch"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 107
    const-string/jumbo v16, "wait"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 108
    .local v15, wait:I
    const-string/jumbo v16, "player"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string/jumbo v16, "player"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, v16

    .line 109
    .local v4, PlayerName:Ljava/lang/String;
    :goto_2
    if-lez v15, :cond_6

    .line 110
    new-instance v16, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v4

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;Ljava/lang/String;I)V

    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1$1;->start()V

    .line 121
    .end local v4           #PlayerName:Ljava/lang/String;
    .end local v15           #wait:I
    :cond_3
    :goto_3
    if-eqz v13, :cond_0

    .line 123
    const-string/jumbo v16, "play"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 124
    invoke-virtual {v13}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->play()V

    goto/16 :goto_0

    .line 105
    :cond_4
    const-string/jumbo v18, "null"

    goto :goto_1

    .line 108
    .restart local v15       #wait:I
    :cond_5
    const/16 v16, 0x0

    move-object/from16 v4, v16

    goto :goto_2

    .line 119
    .restart local v4       #PlayerName:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->launchPlayer(Ljava/lang/String;I)V

    goto :goto_3

    .line 125
    .end local v4           #PlayerName:Ljava/lang/String;
    .end local v15           #wait:I
    :cond_7
    const-string/jumbo v16, "stop"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 126
    invoke-virtual {v13}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->stop()V

    goto/16 :goto_0

    .line 127
    :cond_8
    const-string/jumbo v16, "pause"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 128
    invoke-virtual {v13}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->pause()V

    goto/16 :goto_0

    .line 129
    :cond_9
    const-string/jumbo v16, "setcurrentplayer"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    move-object/from16 v16, v0

    const-string/jumbo v17, "player"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->setCurrentPlayer(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 131
    .restart local p0
    :cond_a
    const-string v16, "getplayers"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayers()[Ljava/lang/String;

    move-result-object v14

    .line 133
    .local v14, players:[Ljava/lang/String;
    move-object v6, v14

    .local v6, arr$:[Ljava/lang/String;
    array-length v10, v6

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_4
    if-ge v8, v10, :cond_0

    aget-object v12, v6, v8

    .line 134
    .local v12, name:Ljava/lang/String;
    const-string v16, "BluetoothAVRCPService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getPlayers ret: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 136
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #players:[Ljava/lang/String;
    :cond_b
    const-string/jumbo v16, "next"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 137
    invoke-virtual {v13}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->next()V

    goto/16 :goto_0

    .line 138
    :cond_c
    const-string/jumbo v16, "prev"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 139
    invoke-virtual {v13}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->prev()V

    goto/16 :goto_0

    .line 140
    :cond_d
    const-string/jumbo v16, "setrepeatmode"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 141
    const-string/jumbo v16, "mode"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 142
    .local v11, mode:I
    invoke-virtual {v13, v11}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setRepeatMode(I)V

    goto/16 :goto_0

    .line 144
    .end local v11           #mode:I
    :cond_e
    const-string/jumbo v16, "setshufflemode"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 145
    const-string/jumbo v16, "mode"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 146
    .restart local v11       #mode:I
    invoke-virtual {v13, v11}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setShuffleMode(I)V

    goto/16 :goto_0

    .line 148
    .end local v11           #mode:I
    :cond_f
    const-string/jumbo v16, "position"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 149
    const-string v16, "BluetoothAVRCPService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getPosition ret: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->position()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    :cond_10
    const-string v16, "getcurrentplayer"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getCurrentPlayer()Ljava/lang/String;

    move-result-object v4

    .line 153
    .restart local v4       #PlayerName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->isPlayerLaunched(Ljava/lang/String;)Z

    move-result v9

    .line 154
    .local v9, launched:Z
    const-string v16, "BluetoothAVRCPService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "current player name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; launched: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    .end local v4           #PlayerName:Ljava/lang/String;
    .end local v9           #launched:Z
    :cond_11
    const-string v16, "BluetoothAVRCPService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown avrcp testing cmd: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

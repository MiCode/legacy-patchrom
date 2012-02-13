.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .local v0, in:Landroid/app/IApplicationThread;
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 70
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :pswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .local v7, b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move/from16 v55, v5

    .local v55, finished:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v69, v5

    .local v69, userLeaving:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v55

    move/from16 v3, v69

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v19           #configChanges:I
    .end local v55           #finished:Z
    .end local v69           #userLeaving:Z
    :cond_0
    const/4 v5, 0x0

    move/from16 v55, v5

    goto :goto_1

    .restart local v55       #finished:Z
    :cond_1
    const/4 v5, 0x0

    move/from16 v69, v5

    goto :goto_2

    .end local v7           #b:Landroid/os/IBinder;
    .end local v55           #finished:Z
    :pswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v65, v5

    .local v65, show:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19       #configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v65

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v19           #configChanges:I
    .end local v65           #show:Z
    :cond_2
    const/4 v5, 0x0

    move/from16 v65, v5

    goto :goto_3

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v65, v5

    .restart local v65       #show:Z
    :goto_4
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v65           #show:Z
    :cond_3
    const/4 v5, 0x0

    move/from16 v65, v5

    goto :goto_4

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move v14, v5

    .local v14, isForward:Z
    :goto_5
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v14           #isForward:Z
    :cond_4
    const/4 v5, 0x0

    move v14, v5

    goto :goto_5

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .local v11, ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #b:Landroid/os/IBinder;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .local v6, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, ident:I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .local v9, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v10

    .local v10, state:Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .restart local v11       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .local v12, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move v13, v5

    .local v13, notResumed:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move v14, v5

    .restart local v14       #isForward:Z
    :goto_7
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v13           #notResumed:Z
    .end local v14           #isForward:Z
    :cond_5
    const/4 v5, 0x0

    move v13, v5

    goto :goto_6

    .restart local v13       #notResumed:Z
    :cond_6
    const/4 v5, 0x0

    move v14, v5

    goto :goto_7

    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #b:Landroid/os/IBinder;
    .end local v8           #ident:I
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #state:Landroid/os/Bundle;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v13           #notResumed:Z
    :pswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .restart local v11       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .restart local v12       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19       #configChanges:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move v13, v5

    .restart local v13       #notResumed:Z
    :goto_8
    const/16 v21, 0x0

    .local v21, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #config:Landroid/content/res/Configuration;
    check-cast v21, Landroid/content/res/Configuration;

    .restart local v21       #config:Landroid/content/res/Configuration;
    :cond_7
    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    invoke-virtual/range {v15 .. v21}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v13           #notResumed:Z
    .end local v21           #config:Landroid/content/res/Configuration;
    :cond_8
    const/4 v5, 0x0

    move v13, v5

    goto :goto_8

    .end local v7           #b:Landroid/os/IBinder;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v19           #configChanges:I
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .restart local v12       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #b:Landroid/os/IBinder;
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    move/from16 v56, v5

    .local v56, finishing:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19       #configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v56

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v19           #configChanges:I
    .end local v56           #finishing:Z
    :cond_9
    const/4 v5, 0x0

    move/from16 v56, v5

    goto :goto_9

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .local v26, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v27

    .local v27, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move/from16 v28, v5

    .local v28, sync:Z
    :goto_a
    move-object/from16 v22, p0

    move-object/from16 v23, v6

    move-object/from16 v24, v9

    invoke-virtual/range {v22 .. v28}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v28           #sync:Z
    :cond_a
    const/4 v5, 0x0

    move/from16 v28, v5

    goto :goto_a

    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v25           #resultCode:I
    .end local v26           #resultData:Ljava/lang/String;
    .end local v27           #resultExtras:Landroid/os/Bundle;
    :pswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v68

    .local v68, token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .local v9, info:Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9           #info:Landroid/content/pm/ServiceInfo;
    .end local v68           #token:Landroid/os/IBinder;
    :pswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v68

    .restart local v68       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    move/from16 v63, v5

    .local v63, rebind:Z
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move-object v2, v6

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v63           #rebind:Z
    :cond_b
    const/4 v5, 0x0

    move/from16 v63, v5

    goto :goto_b

    .end local v6           #intent:Landroid/content/Intent;
    .end local v68           #token:Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v68

    .restart local v68       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #intent:Landroid/content/Intent;
    .end local v68           #token:Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v68

    .restart local v68       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .local v67, startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .local v57, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/Intent;

    .local v50, args:Landroid/content/Intent;
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, v67

    move/from16 v3, v57

    move-object/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;IILandroid/content/Intent;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v50           #args:Landroid/content/Intent;
    :cond_c
    const/16 v50, 0x0

    .restart local v50       #args:Landroid/content/Intent;
    goto :goto_c

    .end local v50           #args:Landroid/content/Intent;
    .end local v57           #fl:I
    .end local v67           #startId:I
    .end local v68           #token:Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v68

    .restart local v68       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v68           #token:Landroid/os/IBinder;
    :pswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, packageName:Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .local v9, info:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v32

    .local v32, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Landroid/content/ComponentName;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    move-object/from16 v33, v5

    .local v33, testName:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .local v34, profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v35

    .local v35, testArgs:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .local v52, binder:Landroid/os/IBinder;
    invoke-static/range {v52 .. v52}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v36

    .local v36, testWatcher:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .local v37, testMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    move/from16 v38, v5

    .local v38, restrictedBackupMode:Z
    :goto_e
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/res/Configuration;

    .restart local v21       #config:Landroid/content/res/Configuration;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v40

    .local v40, services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    move-object/from16 v29, p0

    move-object/from16 v31, v9

    move-object/from16 v39, v21

    invoke-virtual/range {v29 .. v40}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZLandroid/content/res/Configuration;Ljava/util/Map;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v21           #config:Landroid/content/res/Configuration;
    .end local v33           #testName:Landroid/content/ComponentName;
    .end local v34           #profileName:Ljava/lang/String;
    .end local v35           #testArgs:Landroid/os/Bundle;
    .end local v36           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v37           #testMode:I
    .end local v38           #restrictedBackupMode:Z
    .end local v40           #services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v52           #binder:Landroid/os/IBinder;
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v33, v5

    goto :goto_d

    .restart local v33       #testName:Landroid/content/ComponentName;
    .restart local v34       #profileName:Ljava/lang/String;
    .restart local v35       #testArgs:Landroid/os/Bundle;
    .restart local v36       #testWatcher:Landroid/app/IInstrumentationWatcher;
    .restart local v37       #testMode:I
    .restart local v52       #binder:Landroid/os/IBinder;
    :cond_e
    const/4 v5, 0x0

    move/from16 v38, v5

    goto :goto_e

    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v30           #packageName:Ljava/lang/String;
    .end local v32           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v33           #testName:Landroid/content/ComponentName;
    .end local v34           #profileName:Ljava/lang/String;
    .end local v35           #testArgs:Landroid/os/Bundle;
    .end local v36           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v37           #testMode:I
    .end local v52           #binder:Landroid/os/IBinder;
    :pswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/res/Configuration;

    .restart local v21       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v21           #config:Landroid/content/res/Configuration;
    :pswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v54

    .local v54, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v64

    .local v64, service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v50

    .local v50, args:[Ljava/lang/String;
    if-eqz v54, :cond_f

    invoke-virtual/range {v54 .. v54}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v64

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {v54 .. v54}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_f
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v50           #args:[Ljava/lang/String;
    .end local v54           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v64           #service:Landroid/os/IBinder;
    :pswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v42

    .local v42, receiver:Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .restart local v25       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .local v45, dataStr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v46

    .local v46, extras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    move/from16 v47, v5

    .local v47, ordered:Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    move/from16 v48, v5

    .local v48, sticky:Z
    :goto_11
    move-object/from16 v41, p0

    move-object/from16 v43, v6

    move/from16 v44, v25

    invoke-virtual/range {v41 .. v48}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v47           #ordered:Z
    .end local v48           #sticky:Z
    :cond_10
    const/4 v5, 0x0

    move/from16 v47, v5

    goto :goto_10

    .restart local v47       #ordered:Z
    :cond_11
    const/4 v5, 0x0

    move/from16 v48, v5

    goto :goto_11

    .end local v6           #intent:Landroid/content/Intent;
    .end local v25           #resultCode:I
    .end local v42           #receiver:Landroid/content/IIntentReceiver;
    .end local v45           #dataStr:Ljava/lang/String;
    .end local v46           #extras:Landroid/os/Bundle;
    .end local v47           #ordered:Z
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move/from16 v66, v5

    .local v66, start:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v62

    .local v62, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v54, v5

    .restart local v54       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v66

    move-object/from16 v2, v62

    move-object/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v54           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v62           #path:Ljava/lang/String;
    .end local v66           #start:Z
    :cond_12
    const/4 v5, 0x0

    move/from16 v66, v5

    goto :goto_12

    .restart local v62       #path:Ljava/lang/String;
    .restart local v66       #start:Z
    :cond_13
    const/4 v5, 0x0

    move-object/from16 v54, v5

    goto :goto_13

    .end local v62           #path:Ljava/lang/String;
    .end local v66           #start:Z
    :pswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .local v58, group:I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v58           #group:I
    :pswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/pm/ApplicationInfo;

    .local v49, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .local v51, backupMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v51           #backupMode:I
    :pswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/pm/ApplicationInfo;

    .restart local v49       #appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #appInfo:Landroid/content/pm/ApplicationInfo;
    :pswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v59, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v59 .. v59}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .local v59, mi:Landroid/os/Debug$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v59           #mi:Landroid/os/Debug$MemoryInfo;
    :pswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .local v53, cmd:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v61

    .local v61, packages:[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v53           #cmd:I
    .end local v61           #packages:[Ljava/lang/String;
    :pswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v60

    .local v60, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v60           #msg:Ljava/lang/String;
    .restart local v50       #args:[Ljava/lang/String;
    .restart local v54       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v64       #service:Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_f

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_c
        :pswitch_d
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_7
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_12
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

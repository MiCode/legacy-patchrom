.class public Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;
.super Landroid/preference/PreferenceActivity;
.source "CameraSettingMenu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MotoCameraSettingMenu"


# instance fields
.field audioZoomListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private expValueKey:Ljava/lang/String;

.field faceTrackingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private isoValueKey:Ljava/lang/String;

.field listener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field muteAudioListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private panImageResKey:Ljava/lang/String;

.field shutterAnimationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field shutterToneListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private stillImagePicResKey:Ljava/lang/String;

.field private videoResKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;-><init>(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)V

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->listener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 107
    new-instance v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$2;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$2;-><init>(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)V

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->muteAudioListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 126
    new-instance v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$3;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$3;-><init>(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)V

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->audioZoomListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 144
    new-instance v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$4;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$4;-><init>(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)V

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->faceTrackingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 165
    new-instance v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$5;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$5;-><init>(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)V

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->shutterAnimationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 188
    new-instance v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$6;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$6;-><init>(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)V

    iput-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->shutterToneListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->stillImagePicResKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->panImageResKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->videoResKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->isoValueKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->expValueKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "icicle"

    .prologue
    .line 218
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v22, :cond_0

    .line 222
    const-string v22, "MotoCameraSettingMenu"

    const-string v23, "onCreate() - Enter"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isCamSettingInit()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_3

    .line 229
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->finish()V

    .line 586
    .end local p1
    :cond_2
    :goto_0
    return-void

    .line 234
    .restart local p1
    :cond_3
    const v22, 0x7f0b0039

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->stillImagePicResKey:Ljava/lang/String;

    .line 235
    const v22, 0x7f0b003a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->panImageResKey:Ljava/lang/String;

    .line 236
    const v22, 0x7f0b003b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->videoResKey:Ljava/lang/String;

    .line 238
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v22, :cond_4

    .line 239
    const v22, 0x7f0b0045

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->isoValueKey:Ljava/lang/String;

    .line 240
    :cond_4
    const v22, 0x7f0b0046

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->expValueKey:Ljava/lang/String;

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 244
    .local v7, extras:Landroid/os/Bundle;
    if-eqz v7, :cond_6

    .line 246
    const-string v22, "orientation"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 247
    .local v18, value:I
    if-eqz v18, :cond_6

    .line 249
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v22, :cond_5

    const-string v22, "MotoCameraSettingMenu"

    const-string v23, "orientation settings read from INTENT"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->setRequestedOrientation(I)V

    .line 256
    .end local v18           #value:I
    :cond_6
    :goto_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 258
    const v22, 0x7f050006

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->addPreferencesFromResource(I)V

    .line 263
    :goto_2
    const v22, 0x7f050002

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->addPreferencesFromResource(I)V

    .line 265
    const-string v22, "ro.mot.deblur"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "online_album"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_7
    const/4 v4, 0x0

    .line 273
    .local v4, currentIndex:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    .line 276
    const v22, 0x7f0b0039

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/motorola/CameraF/View/SummaryListPreference;

    .line 279
    .local v12, listpref:Lcom/motorola/CameraF/View/SummaryListPreference;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionImgs:[Ljava/lang/Integer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object v14, v0

    .line 281
    .local v14, picFinalIconList:[I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v17, summaryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v22, :cond_8

    const-string v22, "MotoCameraSettingMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MaxPicResolution is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_8
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "EightMPW"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 287
    const/4 v9, 0x0

    .local v9, ind:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 251
    .end local v4           #currentIndex:I
    .end local v9           #ind:I
    .end local v12           #listpref:Lcom/motorola/CameraF/View/SummaryListPreference;
    .end local v14           #picFinalIconList:[I
    .end local v17           #summaryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v18       #value:I
    :cond_9
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 260
    .end local v18           #value:I
    :cond_a
    const v22, 0x7f050004

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 291
    .restart local v4       #currentIndex:I
    .restart local v12       #listpref:Lcom/motorola/CameraF/View/SummaryListPreference;
    .restart local v14       #picFinalIconList:[I
    .restart local v17       #summaryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_b
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "EightMP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 293
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070007

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070007

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 297
    .end local v9           #ind:I
    :cond_c
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "FiveMPW"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 299
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 303
    .end local v9           #ind:I
    :cond_d
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "FiveMP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 305
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 312
    .end local v9           #ind:I
    :cond_e
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070013

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070013

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 317
    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 318
    .local v16, summaries:[Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setSummaryText([Ljava/lang/CharSequence;)V

    .line 321
    const/4 v9, 0x0

    :goto_8
    move-object v0, v14

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 323
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionImgs:[Ljava/lang/Integer;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aput v22, v14, v9

    .line 321
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 326
    :cond_10
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 327
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 329
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 330
    const/16 v22, -0x1

    move v0, v4

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 332
    const/4 v4, 0x0

    .line 334
    :cond_11
    invoke-virtual {v12}, Lcom/motorola/CameraF/View/SummaryListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v22

    aget-object v22, v22, v4

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->listener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 338
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 340
    const/16 v22, 0x0

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEnabled(Z)V

    .line 416
    :cond_12
    :goto_9
    const v22, 0x7f0b003b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .end local v12           #listpref:Lcom/motorola/CameraF/View/SummaryListPreference;
    check-cast v12, Lcom/motorola/CameraF/View/SummaryListPreference;

    .line 420
    .restart local v12       #listpref:Lcom/motorola/CameraF/View/SummaryListPreference;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionSummaries:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 421
    .local v21, vidsummaries:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionSummaries:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setSummaryText([Ljava/lang/CharSequence;)V

    .line 424
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 425
    .local v20, vidEntryValues:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 428
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionEntries:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    .line 429
    .local v19, vidEntries:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionEntries:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 432
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 433
    invoke-virtual {v12}, Lcom/motorola/CameraF/View/SummaryListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v22

    aget-object v22, v22, v4

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->listener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 438
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_28

    .line 439
    const/16 v22, 0x0

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEnabled(Z)V

    .line 454
    :goto_a
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v22, :cond_1c

    .line 456
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-nez v22, :cond_13

    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_EXP_SETTING:Z

    if-nez v22, :cond_13

    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHUTTER_TONE_MENU_ENABLED:Z

    if-eqz v22, :cond_14

    .line 458
    :cond_13
    const v22, 0x7f050003

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->addPreferencesFromResource(I)V

    .line 462
    :cond_14
    const-string v22, "Face Detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 463
    .local v8, faceTrackPref:Landroid/preference/CheckBoxPreference;
    if-eqz v8, :cond_16

    .line 465
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2a

    .line 466
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v22, :cond_15

    .line 467
    const-string v22, "MotoCameraSettingMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "faceTrackPref "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_15
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_29

    .line 470
    const/16 v22, 0x0

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 473
    :goto_b
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->faceTrackingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 484
    :cond_16
    :goto_c
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    if-eqz v22, :cond_17

    .line 485
    new-instance v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 486
    .local v3, audioZoomPref:Landroid/preference/CheckBoxPreference;
    const v22, 0x7f0b0047

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 487
    const v22, 0x7f0b0047

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    const v22, 0x7f0b0048

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 489
    const v22, 0x7f0b0048

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 490
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 491
    const/16 v22, 0x1

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 492
    const/16 v22, 0x1

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 493
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->IsAudioZoomOn()Z

    move-result v22

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->audioZoomListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 501
    .end local v3           #audioZoomPref:Landroid/preference/CheckBoxPreference;
    :cond_17
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v22, :cond_19

    .line 502
    const v22, 0x7f0b0045

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    .line 504
    .local v11, isoPref:Landroid/preference/ListPreference;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isoValues:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v10, v0

    .line 508
    .local v10, isoEntryValues:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isoValues:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 509
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->isoValues:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 511
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v22

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 512
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v22, :cond_18

    .line 513
    const-string v22, "MotoCameraSettingMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current ISO "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v22, "MotoCameraSettingMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current Index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070028

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v4

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v22

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->listener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 522
    .end local v10           #isoEntryValues:[Ljava/lang/CharSequence;
    .end local v11           #isoPref:Landroid/preference/ListPreference;
    :cond_19
    const v22, 0x7f0b0046

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 524
    .local v6, exposurePref:Landroid/preference/ListPreference;
    if-eqz v6, :cond_1b

    .line 526
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_EXP_SETTING:Z

    if-eqz v22, :cond_2b

    .line 528
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->expValues:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v5, v0

    .line 530
    .local v5, expEntryValues:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->expValues:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 531
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->expValues:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 532
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v22

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 533
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v22, :cond_1a

    .line 534
    const-string v22, "MotoCameraSettingMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current Exposure "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v22, "MotoCameraSettingMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current Index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070029

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v4

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v22

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->listener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 547
    .end local v5           #expEntryValues:[Ljava/lang/CharSequence;
    :cond_1b
    :goto_d
    const-string v22, "Shutter Tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 548
    .local v2, ShutterTonePref:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_1c

    .line 550
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHUTTER_TONE_MENU_ENABLED:Z

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2c

    .line 552
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v22

    move-object v0, v2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->shutterToneListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 560
    .end local v2           #ShutterTonePref:Landroid/preference/CheckBoxPreference;
    .end local v6           #exposurePref:Landroid/preference/ListPreference;
    .end local v8           #faceTrackPref:Landroid/preference/CheckBoxPreference;
    :cond_1c
    :goto_e
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_MUTE_AUDIO_SETTING:Z

    if-eqz v22, :cond_1d

    .line 562
    new-instance v13, Landroid/preference/CheckBoxPreference;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 563
    .local v13, muteAudioPref:Landroid/preference/CheckBoxPreference;
    const v22, 0x7f0b0043

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 564
    const v22, 0x7f0b0043

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 565
    const v22, 0x7f0b0044

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 566
    const v22, 0x7f0b0044

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 567
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 569
    const/16 v22, 0x1

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 570
    const/16 v22, 0x1

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 571
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAudioMuted()Z

    move-result v22

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->muteAudioListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 576
    .end local v13           #muteAudioPref:Landroid/preference/CheckBoxPreference;
    :cond_1d
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 578
    const v22, 0x7f050001

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->addPreferencesFromResource(I)V

    .line 580
    const-string v22, "Shutter Animation"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    .line 581
    .local v15, shutterAnimPref:Landroid/preference/CheckBoxPreference;
    if-eqz v15, :cond_2

    .line 582
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v22

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->shutterAnimationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 345
    .end local v9           #ind:I
    .end local v12           #listpref:Lcom/motorola/CameraF/View/SummaryListPreference;
    .end local v14           #picFinalIconList:[I
    .end local v15           #shutterAnimPref:Landroid/preference/CheckBoxPreference;
    .end local v16           #summaries:[Ljava/lang/CharSequence;
    .end local v17           #summaryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v19           #vidEntries:[Ljava/lang/CharSequence;
    .end local v20           #vidEntryValues:[Ljava/lang/CharSequence;
    .end local v21           #vidsummaries:[Ljava/lang/CharSequence;
    .restart local p1
    :cond_1e
    const v22, 0x7f0b003a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/motorola/CameraF/View/SummaryListPreference;

    .line 348
    .restart local v12       #listpref:Lcom/motorola/CameraF/View/SummaryListPreference;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .restart local v17       #summaryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPanResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "EightMPW"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 353
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 357
    .end local v9           #ind:I
    :cond_1f
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPanResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "EightMP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 359
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070007

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070007

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 363
    .end local v9           #ind:I
    :cond_20
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPanResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "FiveMPW"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 365
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 369
    .end local v9           #ind:I
    :cond_21
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPanResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "FiveMP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 371
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 375
    .end local v9           #ind:I
    :cond_22
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPanResolution()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ThreeMP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 377
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070013

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070013

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 383
    .end local v9           #ind:I
    :cond_23
    sget-boolean v22, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v22, :cond_24

    .line 384
    const-string v22, "MotoCameraSettingMenu"

    const-string v23, "Hit Unknown supported resolution scenario"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_24
    const/4 v9, 0x0

    .restart local v9       #ind:I
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070013

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070013

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    aget-object v22, v22, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 391
    :cond_25
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 392
    .restart local v16       #summaries:[Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/CharSequence;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setSummaryText([Ljava/lang/CharSequence;)V

    .line 394
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionImgs:[Ljava/lang/Integer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object v14, v0

    .line 396
    .restart local v14       #picFinalIconList:[I
    const/4 v9, 0x0

    :goto_15
    move-object v0, v14

    array-length v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_26

    .line 398
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionImgs:[Ljava/lang/Integer;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aput v22, v14, v9

    .line 396
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 401
    :cond_26
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 402
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->panResolutionValues:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 404
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPanoramaResolution()Ljava/lang/String;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 405
    const/16 v22, -0x1

    move v0, v4

    move/from16 v1, v22

    if-ne v0, v1, :cond_27

    .line 407
    const/4 v4, 0x0

    .line 409
    :cond_27
    invoke-virtual {v12}, Lcom/motorola/CameraF/View/SummaryListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v22

    aget-object v22, v22, v4

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPanoramaResolution()Ljava/lang/String;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->listener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 412
    const/16 v22, 0x0

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEnabled(Z)V

    goto/16 :goto_9

    .line 441
    .restart local v19       #vidEntries:[Ljava/lang/CharSequence;
    .restart local v20       #vidEntryValues:[Ljava/lang/CharSequence;
    .restart local v21       #vidsummaries:[Ljava/lang/CharSequence;
    :cond_28
    const/16 v22, 0x1

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/SummaryListPreference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 472
    .restart local v8       #faceTrackPref:Landroid/preference/CheckBoxPreference;
    :cond_29
    const/16 v22, 0x1

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_b

    .line 478
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 542
    .restart local v6       #exposurePref:Landroid/preference/ListPreference;
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 556
    .restart local v2       #ShutterTonePref:Landroid/preference/CheckBoxPreference;
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 591
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 594
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isCamSettingInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->finish()V

    .line 599
    :cond_1
    return-void
.end method

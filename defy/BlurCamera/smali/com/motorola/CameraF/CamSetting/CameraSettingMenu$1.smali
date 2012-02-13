.class Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;
.super Ljava/lang/Object;
.source "CameraSettingMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;->this$0:Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x0

    .line 62
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 64
    .local v1, newValueString:Ljava/lang/String;
    instance-of v3, p1, Landroid/preference/ListPreference;

    if-nez v3, :cond_0

    move v3, v4

    .line 102
    :goto_0
    return v3

    .line 67
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v2, v0

    .line 69
    .local v2, p:Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v4

    .line 71
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;->this$0:Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    #getter for: Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->stillImagePicResKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->access$000(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 102
    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;->this$0:Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    #getter for: Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->panImageResKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->access$100(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 87
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentPanShotRes(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;->this$0:Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    #getter for: Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->videoResKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->access$200(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 92
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_6
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;->this$0:Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    #getter for: Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->isoValueKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->access$300(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 96
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentIsoValue(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_7
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$1;->this$0:Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    #getter for: Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->expValueKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;->access$400(Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.class Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$3;
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
    .line 128
    iput-object p1, p0, Lcom/motorola/CameraF/CamSetting/CameraSettingMenu$3;->this$0:Lcom/motorola/CameraF/CamSetting/CameraSettingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 130
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 131
    .local v1, bNewValue:Ljava/lang/Boolean;
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v2, v0

    .line 132
    .local v2, p:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    const-string v3, "MotoCameraSettingMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraSettingMenu:onPreferenceChange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    sput-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->AUDIO_ZOOM:Z

    .line 136
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->AUDIO_ZOOM:Z

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->SetAudioZoom(Z)V

    .line 137
    const/4 v3, 0x1

    .line 139
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

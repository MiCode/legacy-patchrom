.class Lcom/android/phone/PhoneApp$SettingsObserver;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 3085
    iput-object p1, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3085
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$SettingsObserver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Landroid/content/ContentQueryMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v5, 0x1

    const-string v6, "-------------------------"

    const-string v4, "PhoneApp"

    .line 3092
    sget-boolean v2, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    if-ne v2, v5, :cond_6

    .line 3093
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: SettingsObserver, update() triggered"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mEmergencySettings:Z
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3600(Lcom/android/phone/PhoneApp;)Z

    move-result v2

    if-ne v2, v5, :cond_6

    .line 3100
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: SettingsObserver, EMERGENCY CALL, get current Settings"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    :cond_1
    const-string v2, "screen_off_timeout"

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneApp$SettingsObserver;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3102
    .local v1, mCurrentScreenTimeout:I
    const-string v2, "screen_brightness"

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneApp$SettingsObserver;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3104
    .local v0, mCurrentScreenBrightness:I
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "PhoneApp"

    const-string v2, "-------------------------"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    :cond_2
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTR33129: SettingsObserver, mCurrentScreenTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCurrentScreenBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "PhoneApp"

    const-string v2, "-------------------------"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    :cond_4
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_7

    .line 3110
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3700(Lcom/android/phone/PhoneApp;)I

    move-result v2

    if-eq v1, v2, :cond_5

    const v2, 0xea60

    if-eq v1, v2, :cond_5

    .line 3111
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z
    invoke-static {v2, v5}, Lcom/android/phone/PhoneApp;->access$4102(Lcom/android/phone/PhoneApp;Z)Z

    .line 3112
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTR33129: SettingsObserver, during 60sec, mUserChangedScreenTimeout ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$4100(Lcom/android/phone/PhoneApp;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    :cond_5
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3800(Lcom/android/phone/PhoneApp;)I

    move-result v2

    if-eq v0, v2, :cond_6

    const/16 v2, 0xff

    if-eq v0, v2, :cond_6

    .line 3116
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z
    invoke-static {v2, v5}, Lcom/android/phone/PhoneApp;->access$4202(Lcom/android/phone/PhoneApp;Z)Z

    .line 3117
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTR33129: SettingsObserver, during 60sec, mUserChangedScreenBrightness ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$4200(Lcom/android/phone/PhoneApp;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    .end local v0           #mCurrentScreenBrightness:I
    .end local v1           #mCurrentScreenTimeout:I
    :cond_6
    :goto_0
    return-void

    .line 3122
    .restart local v0       #mCurrentScreenBrightness:I
    .restart local v1       #mCurrentScreenTimeout:I
    :cond_7
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3700(Lcom/android/phone/PhoneApp;)I

    move-result v2

    if-eq v1, v2, :cond_8

    const/16 v2, 0x7530

    if-eq v1, v2, :cond_8

    .line 3123
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z
    invoke-static {v2, v5}, Lcom/android/phone/PhoneApp;->access$4102(Lcom/android/phone/PhoneApp;Z)Z

    .line 3124
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTR33129: SettingsObserver, during 30sec, mUserChangedScreenTimeout ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$4100(Lcom/android/phone/PhoneApp;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_8
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3800(Lcom/android/phone/PhoneApp;)I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 3127
    iget-object v2, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z
    invoke-static {v2, v5}, Lcom/android/phone/PhoneApp;->access$4202(Lcom/android/phone/PhoneApp;Z)Z

    .line 3128
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTR33129: SettingsObserver, during 30sec, mUserChangedScreenBrightness ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$SettingsObserver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$4200(Lcom/android/phone/PhoneApp;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

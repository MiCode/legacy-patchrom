.class Lcom/android/server/VibratorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .locals 3
    .parameter
    .parameter "type"

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 781
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 783
    #getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 785
    iput p2, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    .line 786
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x7

    .line 790
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 796
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mDefaultTouchMagnitude:I
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1402(Lcom/android/server/VibratorService;I)I

    goto :goto_0

    .line 801
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->volumeToMagnitude:[I
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aget v1, v1, v2

    #setter for: Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1602(Lcom/android/server/VibratorService;I)I

    goto :goto_0

    .line 806
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->volumeToMagnitude:[I
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aget v1, v1, v2

    #setter for: Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1802(Lcom/android/server/VibratorService;I)I

    goto :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

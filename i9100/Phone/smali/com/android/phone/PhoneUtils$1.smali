.class final Lcom/android/phone/PhoneUtils$1;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "iBinder"

    .prologue
    .line 276
    const-string v0, "Extended NW onServiceConnected"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 277
    invoke-static {p2}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtendedNetworkService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$302(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 278
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 281
    const-string v0, "Extended NW onServiceDisconnected"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$302(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 283
    return-void
.end method

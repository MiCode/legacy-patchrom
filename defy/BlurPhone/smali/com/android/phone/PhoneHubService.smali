.class public Lcom/android/phone/PhoneHubService;
.super Landroid/app/Service;
.source "PhoneHubService.java"


# static fields
.field public static mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

.field private static result:I


# instance fields
.field private final mBinder:Lcom/android/phone/PhoneHub$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    .line 20
    const/4 v0, 0x4

    sput v0, Lcom/android/phone/PhoneHubService;->result:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/android/phone/PhoneHubService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneHubService$1;-><init>(Lcom/android/phone/PhoneHubService;)V

    iput-object v0, p0, Lcom/android/phone/PhoneHubService;->mBinder:Lcom/android/phone/PhoneHub$Stub;

    .line 14
    return-void
.end method

.method public static PhoneCheckNumber(Ljava/lang/String;IZI)I
    .locals 1
    .parameter "phonenumber"
    .parameter "calltype"
    .parameter "updatelog"
    .parameter "networktype"

    .prologue
    .line 49
    sget-object v0, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v0, :cond_0

    .line 52
    if-nez p0, :cond_1

    .line 53
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/android/phone/PhoneHubService;->result:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    sget v0, Lcom/android/phone/PhoneHubService;->result:I

    return v0

    .line 56
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/motorola/firewall/CallFirewallCallback;->CheckNumberBlock(Ljava/lang/String;IZI)I

    move-result v0

    sput v0, Lcom/android/phone/PhoneHubService;->result:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "arg0"

    .prologue
    const-string v2, "PhoneHubService"

    .line 24
    const-string v0, "PhoneHubService"

    const-string v0, "enter into PhoneHubService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-class v0, Lcom/android/phone/PhoneHub;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "PhoneHubService"

    const-string v0, "enter into PhoneHub"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/phone/PhoneHubService;->mBinder:Lcom/android/phone/PhoneHub$Stub;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

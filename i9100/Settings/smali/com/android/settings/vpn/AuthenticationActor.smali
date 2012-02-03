.class public Lcom/android/settings/vpn/AuthenticationActor;
.super Ljava/lang/Object;
.source "AuthenticationActor.java"

# interfaces
.implements Lcom/android/settings/vpn/VpnProfileActor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProfile:Landroid/net/vpn/VpnProfile;

.field private mVpnManager:Landroid/net/vpn/VpnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/settings/vpn/AuthenticationActor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/AuthenticationActor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "context"
    .parameter "p"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    .line 54
    new-instance v0, Landroid/net/vpn/VpnManager;

    invoke-direct {v0, p1}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mVpnManager:Landroid/net/vpn/VpnManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/vpn/AuthenticationActor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/vpn/AuthenticationActor;Landroid/net/vpn/VpnState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn/AuthenticationActor;->broadcastConnectivity(Landroid/net/vpn/VpnState;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/vpn/AuthenticationActor;Landroid/net/vpn/VpnState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/AuthenticationActor;->broadcastConnectivity(Landroid/net/vpn/VpnState;)V

    return-void
.end method

.method private bindService(Landroid/content/ServiceConnection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mVpnManager:Landroid/net/vpn/VpnManager;

    invoke-virtual {v0, p1}, Landroid/net/vpn/VpnManager;->bindVpnService(Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method private broadcastConnectivity(Landroid/net/vpn/VpnState;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V

    .line 212
    return-void
.end method

.method private broadcastConnectivity(Landroid/net/vpn/VpnState;I)V
    .locals 2
    .parameter "s"
    .parameter "errorCode"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    .line 216
    return-void
.end method

.method private connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor;->mVpnManager:Landroid/net/vpn/VpnManager;

    invoke-virtual {v1}, Landroid/net/vpn/VpnManager;->startVpnService()V

    .line 122
    new-instance v0, Lcom/android/settings/vpn/AuthenticationActor$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/vpn/AuthenticationActor$1;-><init>(Lcom/android/settings/vpn/AuthenticationActor;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, c:Landroid/content/ServiceConnection;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/AuthenticationActor;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    const/16 v2, 0x65

    invoke-direct {p0, v1, v2}, Lcom/android/settings/vpn/AuthenticationActor;->broadcastConnectivity(Landroid/net/vpn/VpnState;I)V

    .line 150
    :cond_0
    return-void
.end method

.method private setSavedUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getSavedUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0, p1}, Landroid/net/vpn/VpnProfile;->setSavedUsername(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-static {v0}, Lcom/android/settings/vpn/VpnSettings;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public checkStatus()V
    .locals 4

    .prologue
    .line 178
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 179
    .local v1, cv:Landroid/os/ConditionVariable;
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 180
    new-instance v0, Lcom/android/settings/vpn/AuthenticationActor$3;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/vpn/AuthenticationActor$3;-><init>(Lcom/android/settings/vpn/AuthenticationActor;Landroid/os/ConditionVariable;)V

    .line 200
    .local v0, c:Landroid/content/ServiceConnection;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/AuthenticationActor;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v2}, Lcom/android/settings/vpn/AuthenticationActor;->broadcastConnectivity(Landroid/net/vpn/VpnState;)V

    .line 204
    :cond_0
    return-void
.end method

.method public connect(Landroid/app/Dialog;)V
    .locals 7
    .parameter "d"

    .prologue
    const-string v6, ""

    .line 83
    const v4, 0x7f0b0135

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 84
    .local v3, usernameView:Landroid/widget/TextView;
    const v4, 0x7f0b0137

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, passwordView:Landroid/widget/TextView;
    const v4, 0x7f0b0138

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 88
    .local v2, saveUsername:Landroid/widget/CheckBox;
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/settings/vpn/AuthenticationActor;->setSavedUsername(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/vpn/AuthenticationActor;->connect(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v4, ""

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void

    .line 88
    :cond_0
    :try_start_1
    const-string v4, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v6

    goto :goto_0

    .line 91
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 92
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/vpn/AuthenticationActor;->TAG:Ljava/lang/String;

    const-string v5, "setSavedUsername()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public createConnectView()Landroid/view/View;
    .locals 8

    .prologue
    .line 102
    iget-object v5, p0, Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;

    const v6, 0x7f030062

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 103
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0b0135

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, usernameView:Landroid/widget/TextView;
    const v5, 0x7f0b0137

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, passwordView:Landroid/widget/TextView;
    const v5, 0x7f0b0138

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 107
    .local v1, saveUsername:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v5}, Landroid/net/vpn/VpnProfile;->getSavedUsername()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, username:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 113
    :cond_0
    return-object v4
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/android/settings/vpn/AuthenticationActor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn/AuthenticationActor$2;-><init>(Lcom/android/settings/vpn/AuthenticationActor;)V

    .line 171
    .local v0, c:Landroid/content/ServiceConnection;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/AuthenticationActor;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/vpn/AuthenticationActor;->checkStatus()V

    .line 174
    :cond_0
    return-void
.end method

.method public isConnectDialogNeeded()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public validateInputs(Landroid/app/Dialog;)Ljava/lang/String;
    .locals 4
    .parameter "d"

    .prologue
    .line 69
    const v3, 0x7f0b0135

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, usernameView:Landroid/widget/TextView;
    const v3, 0x7f0b0137

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, passwordView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;

    .line 72
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const v3, 0x7f080492

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    :goto_0
    return-object v3

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const v3, 0x7f080493

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 77
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

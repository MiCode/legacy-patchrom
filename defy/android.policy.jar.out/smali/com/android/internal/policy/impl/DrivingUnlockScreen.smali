.class public Lcom/android/internal/policy/impl/DrivingUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "DrivingUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;
    }
.end annotation


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final MSG_GET_VALUE:I = 0x3

.field private static final MSG_REGISTER_CLIENT:I = 0x1

.field private static final MSG_SET_VALUE:I = 0x4

.field private static final MSG_UNREGISTER_CLIENT:I = 0x2

.field private static final OVERRIDEID:I = 0x1

.field private static final OVERRIDE_INTENT:Ljava/lang/String; = "com.tmobile.driving.action.DRIVING_MODE_OVERRIDE"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mIsBound:Z

.field private final mMessenger:Landroid/os/Messenger;

.field private mOverride:Landroid/widget/Button;

.field private mService:Landroid/os/Messenger;

.field private mView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const-string v3, "DrivingUnlockScreen"

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "DrivingUnlockScreen"

    iput-object v3, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mIsBound:Z

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;-><init>(Lcom/android/internal/policy/impl/DrivingUnlockScreen;Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mConnection:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090033

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->doBindService()V

    const v0, 0x10201da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mOverride:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mOverride:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x10201dc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "DrivingUnlockScreen"

    const-string v0, "Created DriveSafe UnlockScreen"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/DrivingUnlockScreen;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->setRemoteView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->doUnbindService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/DrivingUnlockScreen;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method private doBindService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tmobile.driving.service.GET_VIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mIsBound:Z

    :cond_0
    return-void
.end method

.method private doUnbindService()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mIsBound:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mIsBound:Z

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setRemoteView()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "DrivingUnlockScreen"

    const-string v3, "setting remote view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x10201d9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, inflatedView:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x7530

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mOverride:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tmobile.driving.action.DRIVING_MODE_OVERRIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, override:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .end local v0           #override:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->doBindService()V

    return-void
.end method

.class final Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunConnection"
.end annotation


# instance fields
.field final mCommand:I

.field final mName:Landroid/content/ComponentName;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/LoadedApk$ServiceDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "service"
    .parameter "command"

    .prologue
    .line 1073
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    .line 1075
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    .line 1076
    iput p4, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mCommand:I

    .line 1077
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1080
    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mCommand:I

    if-nez v0, :cond_1

    .line 1081
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mCommand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1083
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

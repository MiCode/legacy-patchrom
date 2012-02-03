.class Landroid/os/storage/StorageManager$ObbListenerDelegate;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mObbEventListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/storage/OnObbStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final nonce:I

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    #calls: Landroid/os/storage/StorageManager;->getNextNonce()I
    invoke-static {p1}, Landroid/os/storage/StorageManager;->access$300(Landroid/os/storage/StorageManager;)I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    .line 158
    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;

    iget-object v1, p1, Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;-><init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 176
    return-void
.end method

.method static synthetic access$200(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    return v0
.end method


# virtual methods
.method getListener()Landroid/os/storage/OnObbStateChangeListener;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/storage/OnObbStateChangeListener;

    move-object v0, p0

    goto :goto_0
.end method

.method sendObbStateChanged(Ljava/lang/String;I)V
    .locals 3
    .parameter "path"
    .parameter "state"

    .prologue
    .line 186
    new-instance v0, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1, p2}, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;-><init>(Landroid/os/storage/StorageManager;Ljava/lang/String;I)V

    .line 187
    .local v0, e:Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->getMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method

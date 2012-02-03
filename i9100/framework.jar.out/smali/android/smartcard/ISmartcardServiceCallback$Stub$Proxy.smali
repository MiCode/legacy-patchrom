.class Landroid/smartcard/ISmartcardServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmartcardServiceCallback.java"

# interfaces
.implements Landroid/smartcard/ISmartcardServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/smartcard/ISmartcardServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/smartcard/ISmartcardServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 57
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/smartcard/ISmartcardServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "android.smartcard.ISmartcardServiceCallback"

    return-object v0
.end method

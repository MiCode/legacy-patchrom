.class public final Landroid/view/inputmethod/InputBinding;
.super Ljava/lang/Object;
.source "InputBinding.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputBinding;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "InputBinding"


# instance fields
.field final mConnection:Landroid/view/inputmethod/InputConnection;

.field final mConnectionToken:Landroid/os/IBinder;

.field final mPid:I

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/inputmethod/InputBinding$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputBinding$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V
    .locals 0
    .parameter "conn"
    .parameter "connToken"
    .parameter "uid"
    .parameter "pid"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    iput-object p2, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    iput p3, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    iput p4, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V
    .locals 1
    .parameter "conn"
    .parameter "binding"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getUid()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getPid()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public getConnectionToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputBinding{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

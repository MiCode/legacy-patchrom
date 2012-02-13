.class Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;
.super Ljava/lang/Object;
.source "ISIMFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ISIMFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLinearFixedContext"
.end annotation


# instance fields
.field countRecords:I

.field efid:I

.field loadAll:Z

.field onLoaded:Landroid/os/Message;

.field recordNum:I

.field recordSize:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field sessionid:I


# direct methods
.method constructor <init>(IIILandroid/os/Message;)V
    .locals 1
    .parameter "sessionid"
    .parameter "efid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    iput p1, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->sessionid:I

    iput p3, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    iput-object p4, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->loadAll:Z

    return-void
.end method

.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .parameter "sessionid"
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->efid:I

    iput p1, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->sessionid:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->recordNum:I

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->loadAll:Z

    iput-object p3, p0, Lcom/motorola/android/internal/telephony/ISIMFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    return-void
.end method

.class public Landroid/content/OperationApplicationException;
.super Ljava/lang/Exception;
.source "OperationApplicationException.java"


# instance fields
.field private final mNumSuccessfulYieldPoints:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "numSuccessfulYieldPoints"

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "message"
    .parameter "numSuccessfulYieldPoints"

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "cause"

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "cause"

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    return-void
.end method


# virtual methods
.method public getNumSuccessfulYieldPoints()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    return v0
.end method

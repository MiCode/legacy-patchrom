.class public Landroid/net/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# instance fields
.field private final gid:I

.field private final pid:I

.field private final uid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "pid"
    .parameter "uid"
    .parameter "gid"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/Credentials;->pid:I

    iput p2, p0, Landroid/net/Credentials;->uid:I

    iput p3, p0, Landroid/net/Credentials;->gid:I

    return-void
.end method


# virtual methods
.method public getGid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/Credentials;->gid:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/Credentials;->pid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/Credentials;->uid:I

    return v0
.end method

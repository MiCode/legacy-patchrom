.class public Landroid/webkit/MotoRSSLink;
.super Ljava/lang/Object;
.source "MotoRSSLink.java"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "url"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/webkit/MotoRSSLink;->mURL:Ljava/lang/String;

    iput-object p1, p0, Landroid/webkit/MotoRSSLink;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/MotoRSSLink;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/MotoRSSLink;->mURL:Ljava/lang/String;

    return-object v0
.end method

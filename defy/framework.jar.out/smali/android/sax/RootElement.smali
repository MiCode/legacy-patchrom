.class public Landroid/sax/RootElement;
.super Landroid/sax/Element;
.source "RootElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/RootElement$Handler;
    }
.end annotation


# instance fields
.field final handler:Landroid/sax/RootElement$Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "localName"

    .prologue
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/sax/Element;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/sax/RootElement$Handler;

    invoke-direct {v0, p0}, Landroid/sax/RootElement$Handler;-><init>(Landroid/sax/RootElement;)V

    iput-object v0, p0, Landroid/sax/RootElement;->handler:Landroid/sax/RootElement$Handler;

    return-void
.end method


# virtual methods
.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sax/RootElement;->handler:Landroid/sax/RootElement$Handler;

    return-object v0
.end method

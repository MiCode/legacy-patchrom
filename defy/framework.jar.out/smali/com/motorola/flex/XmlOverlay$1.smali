.class final Lcom/motorola/flex/XmlOverlay$1;
.super Ljava/lang/Object;
.source "XmlOverlay.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/flex/XmlOverlay;->getOverlays(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)[Lcom/motorola/flex/XmlOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/flex/XmlOverlay$1;->val$suffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .parameter "dir"
    .parameter "name"

    .prologue
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/flex/XmlOverlay$1;->val$suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.class public Landroid/provider/Browser$FolderColumns;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderColumns"
.end annotation


# static fields
.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

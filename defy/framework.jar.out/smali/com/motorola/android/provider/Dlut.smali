.class public Lcom/motorola/android/provider/Dlut;
.super Ljava/lang/Object;
.source "Dlut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/Dlut$Nanp;,
        Lcom/motorola/android/provider/Dlut$Useradd;,
        Lcom/motorola/android/provider/Dlut$Unresolve;,
        Lcom/motorola/android/provider/Dlut$Range;,
        Lcom/motorola/android/provider/Dlut$Conflicts;,
        Lcom/motorola/android/provider/Dlut$Lookup;,
        Lcom/motorola/android/provider/Dlut$Idd;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "dlut"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IDINDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://dlut"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/Dlut;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/motorola/android/provider/Dlut$Useradd;
.super Ljava/lang/Object;
.source "Dlut.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/Dlut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Useradd"
.end annotation


# static fields
.field public static final AREACODE:Ljava/lang/String; = "area_code"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNTRYCODE:Ljava/lang/String; = "country_code"

.field public static final COUNTRYNAME:Ljava/lang/String; = "country_name"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "mcc ASC"

.field public static final DSTFLAG:Ljava/lang/String; = "dst_flag"

.field public static final IDD:Ljava/lang/String; = "idd"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MDNLENGTH:Ljava/lang/String; = "mdn_length"

.field public static final NANPS:Ljava/lang/String; = "nanps"

.field public static final NBPCD:Ljava/lang/String; = "nbpcd"

.field public static final NDD:Ljava/lang/String; = "ndd"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final TIMEZONE:Ljava/lang/String; = "time_zone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://dlut/useradd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

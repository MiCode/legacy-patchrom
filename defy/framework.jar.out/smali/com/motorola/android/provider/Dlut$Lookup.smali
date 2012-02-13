.class public Lcom/motorola/android/provider/Dlut$Lookup;
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
    name = "Lookup"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNTRYCODE:Ljava/lang/String; = "country_code"

.field public static final COUNTRYNAME:Ljava/lang/String; = "country_name"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "mcc ASC"

.field public static final GMTDSTHIGH:Ljava/lang/String; = "gmt_dst_high"

.field public static final GMTDSTLOW:Ljava/lang/String; = "gmt_dst_low"

.field public static final GMTOFFSETHIGH:Ljava/lang/String; = "gmt_offset_high"

.field public static final GMTOFFSETLOW:Ljava/lang/String; = "gmt_offset_low"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final NANPS:Ljava/lang/String; = "nanps"

.field public static final NBPCD:Ljava/lang/String; = "nbpcd"

.field public static final NBPCDLASTATTEMPT:Ljava/lang/String; = "nbpcd_last_attempt"

.field public static final NDD:Ljava/lang/String; = "ndd"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://dlut/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

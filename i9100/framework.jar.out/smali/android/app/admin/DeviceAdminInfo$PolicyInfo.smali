.class public Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyInfo"
.end annotation


# instance fields
.field public final description:I

.field public final ident:I

.field public final label:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .parameter "identIn"
    .parameter "tagIn"
    .parameter "labelIn"
    .parameter "descriptionIn"

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput p1, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    .line 361
    iput-object p2, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 362
    iput p3, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    .line 363
    iput p4, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    .line 364
    return-void
.end method

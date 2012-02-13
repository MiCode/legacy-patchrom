.class Landroid/pim/vcard/VCardBuilder$PostalStruct;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostalStruct"
.end annotation


# instance fields
.field final addressData:Ljava/lang/String;

.field final appendCharset:Z

.field final reallyUseQuotedPrintable:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .parameter "reallyUseQuotedPrintable"
    .parameter "appendCharset"
    .parameter "addressData"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/pim/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    iput-boolean p2, p0, Landroid/pim/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    iput-object p3, p0, Landroid/pim/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    return-void
.end method

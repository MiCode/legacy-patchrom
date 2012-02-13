.class public Landroid/net/http/SslCertificate$DName;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/SslCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DName"
.end annotation


# instance fields
.field private mCName:Ljava/lang/String;

.field private mDName:Ljava/lang/String;

.field private mOName:Ljava/lang/String;

.field private mUName:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/http/SslCertificate;


# direct methods
.method public constructor <init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "dName"

    .prologue
    iput-object p1, p0, Landroid/net/http/SslCertificate$DName;->this$0:Landroid/net/http/SslCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    iput-object p2, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    :try_start_0
    new-instance v3, Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    .local v3, x509Name:Lorg/bouncycastle/asn1/x509/X509Name;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    move-result-object v2

    .local v2, val:Ljava/util/Vector;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    move-result-object v1

    .local v1, oid:Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/x509/X509Name;->O:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #oid:Ljava/util/Vector;
    .end local v2           #val:Ljava/util/Vector;
    .end local v3           #x509Name:Lorg/bouncycastle/asn1/x509/X509Name;
    :catch_0
    move-exception v4

    :cond_2
    return-void

    .restart local v0       #i:I
    .restart local v1       #oid:Ljava/util/Vector;
    .restart local v2       #val:Ljava/util/Vector;
    .restart local v3       #x509Name:Lorg/bouncycastle/asn1/x509/X509Name;
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/x509/X509Name;->OU:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getCName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mCName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mDName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getOName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mOName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/SslCertificate$DName;->mUName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.class Landroid/util/MultiPartStream$MultiPart;
.super Ljava/lang/Object;
.source "MultiPartStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MultiPartStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPart"
.end annotation


# static fields
.field public static final CR:I = 0xd

.field public static final HASH:I = 0x2d

.field private static final HASH_MIME_APPLICATION_VND_WAP_WMLSCRIPT:I = -0x75b40928

.field private static final HASH_MIME_APPLICATION_VND_WAP_XHTMLXML:I = -0x4b81ef1a

.field private static final HASH_MIME_APPLICATION_XHTML_XML:I = 0x23fe04b0

.field private static final HASH_MIME_APPLICATION_XML:I = -0x4a67f528

.field private static final HASH_MIME_TEXT_HTML:I = -0x4081b8b3

.field private static final HASH_MIME_TEXT_PLAIN:I = 0x30b78e68

.field private static final HASH_MIME_TEXT_VND_WAP_WML:I = 0x7793502a

.field private static final HASH_MIME_TEXT_XML:I = -0x3be2ebcb

.field public static final LF:I = 0xa

.field private static final LOGTAG:Ljava/lang/String; = "MultiPart"


# instance fields
.field public IsAlternative:Z

.field public IsFirst:Z

.field public IsMixed:Z

.field public IsRelated:Z

.field public Parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Part;",
            ">;"
        }
    .end annotation
.end field

.field boundaryArray:[I

.field boundaryLength:I

.field public bs:Ljava/io/ByteArrayInputStream;

.field data:[B

.field eom:Z

.field public eop:Z

.field public mBoundary:Ljava/lang/String;

.field public mContentDisposition:Ljava/lang/String;

.field public mContentLocation:Ljava/lang/String;

.field public mContentTransferEncoding:Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mExtraHeaderNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExtraHeaderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSize:I

.field public mStart:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mcharset:Ljava/lang/String;

.field final synthetic this$0:Landroid/util/MultiPartStream;


# direct methods
.method public constructor <init>(Landroid/util/MultiPartStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 726
    iput-object p1, p0, Landroid/util/MultiPartStream$MultiPart;->this$0:Landroid/util/MultiPartStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-boolean v1, p0, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    .line 664
    iput-boolean v1, p0, Landroid/util/MultiPartStream$MultiPart;->IsMixed:Z

    .line 665
    iput-boolean v1, p0, Landroid/util/MultiPartStream$MultiPart;->IsAlternative:Z

    .line 666
    iput-boolean v1, p0, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mExtraHeaderNames:Ljava/util/ArrayList;

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mExtraHeaderValues:Ljava/util/ArrayList;

    .line 675
    iput-object v3, p0, Landroid/util/MultiPartStream$MultiPart;->data:[B

    .line 676
    iput-object v3, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    .line 677
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryLength:I

    .line 690
    iput-boolean v1, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    .line 691
    iput-boolean v1, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 728
    return-void
.end method

.method public constructor <init>(Landroid/util/MultiPartStream;Landroid/util/Part;)V
    .locals 6
    .parameter
    .parameter "pFirst"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "MultiPart"

    .line 693
    iput-object p1, p0, Landroid/util/MultiPartStream$MultiPart;->this$0:Landroid/util/MultiPartStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-boolean v2, p0, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    .line 664
    iput-boolean v2, p0, Landroid/util/MultiPartStream$MultiPart;->IsMixed:Z

    .line 665
    iput-boolean v2, p0, Landroid/util/MultiPartStream$MultiPart;->IsAlternative:Z

    .line 666
    iput-boolean v2, p0, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mExtraHeaderNames:Ljava/util/ArrayList;

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mExtraHeaderValues:Ljava/util/ArrayList;

    .line 675
    iput-object v4, p0, Landroid/util/MultiPartStream$MultiPart;->data:[B

    .line 676
    iput-object v4, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    .line 677
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryLength:I

    .line 690
    iput-boolean v2, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    .line 691
    iput-boolean v2, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 695
    iget-object v0, p2, Landroid/util/Part;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p2, Landroid/util/Part;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mContentType:Ljava/lang/String;

    .line 697
    :cond_0
    const-string v0, "MultiPart"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multipart Content-Type is set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MultiPartStream$MultiPart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p2, Landroid/util/Part;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p2, Landroid/util/Part;->mBoundary:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mBoundary:Ljava/lang/String;

    .line 700
    :cond_1
    iget-object v0, p2, Landroid/util/Part;->mStart:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p2, Landroid/util/Part;->mStart:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mStart:Ljava/lang/String;

    .line 702
    :cond_2
    iget-object v0, p2, Landroid/util/Part;->mContentTransferEncoding:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mContentTransferEncoding:Ljava/lang/String;

    .line 703
    iget-object v0, p2, Landroid/util/Part;->mContentDisposition:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mContentDisposition:Ljava/lang/String;

    .line 704
    iget-object v0, p2, Landroid/util/Part;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mContentLocation:Ljava/lang/String;

    .line 705
    iget-object v0, p2, Landroid/util/Part;->mcharset:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mcharset:Ljava/lang/String;

    .line 706
    iget-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 707
    iget-object v0, p2, Landroid/util/Part;->mExtraHeaderNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mExtraHeaderNames:Ljava/util/ArrayList;

    .line 708
    :cond_3
    iget-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mExtraHeaderValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 709
    iget-object v0, p2, Landroid/util/Part;->mExtraHeaderValues:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mExtraHeaderValues:Ljava/util/ArrayList;

    .line 712
    :cond_4
    iget-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 713
    iput-boolean v3, p0, Landroid/util/MultiPartStream$MultiPart;->IsMixed:Z

    .line 719
    :cond_5
    :goto_0
    const-string v0, "MultiPart"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPart:Created new MultiPart of type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MultiPartStream$MultiPart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with boundary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MultiPartStream$MultiPart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iput-boolean v3, p0, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    .line 721
    iput-boolean v2, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 722
    iput-boolean v2, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    .line 724
    return-void

    .line 714
    :cond_6
    iget-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multipart/related"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 715
    iput-boolean v3, p0, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    goto :goto_0

    .line 716
    :cond_7
    iget-object v0, p0, Landroid/util/MultiPartStream$MultiPart;->mContentType:Ljava/lang/String;

    const-string/jumbo v1, "multipart/alternative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 717
    iput-boolean v3, p0, Landroid/util/MultiPartStream$MultiPart;->IsAlternative:Z

    goto :goto_0
.end method

.method private checkPartBoundary(Landroid/util/MultiPartStream;)Z
    .locals 14
    .parameter "ms"

    .prologue
    .line 824
    iget-object v11, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    array-length v11, v11

    new-array v0, v11, [I

    .line 825
    .local v0, buf:[I
    const/4 v7, 0x0

    .local v7, index:I
    const/4 v10, -0x1

    .line 826
    .local v10, tmpVal:I
    const/4 v1, 0x0

    .line 827
    .local v1, compIdx:I
    const/4 v3, 0x1

    .local v3, doLoop:Z
    move v2, v1

    .end local v1           #compIdx:I
    .local v2, compIdx:I
    move v8, v7

    .line 829
    .end local v7           #index:I
    .local v8, index:I
    :goto_0
    if-eqz v3, :cond_3

    .line 831
    :try_start_0
    iget-object v11, p1, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v11}, Ljava/io/PushbackInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 836
    :goto_1
    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 839
    iget-object v11, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #compIdx:I
    .restart local v1       #compIdx:I
    aget v11, v11, v2

    if-ne v11, v10, :cond_1

    .line 841
    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    aput v10, v0, v8

    .line 842
    iget v11, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryLength:I

    if-ne v11, v1, :cond_0

    .line 843
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 844
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    move v2, v1

    .end local v1           #compIdx:I
    .restart local v2       #compIdx:I
    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto :goto_0

    .line 832
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 834
    .local v5, e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 845
    .end local v2           #compIdx:I
    .end local v5           #e1:Ljava/io/IOException;
    .end local v8           #index:I
    .restart local v1       #compIdx:I
    .restart local v7       #index:I
    :cond_0
    iget-object v11, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    array-length v11, v11

    if-ne v11, v1, :cond_8

    .line 846
    const-string v11, "MultiPart"

    const-string v12, "End Of Multipart Reached and set"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 848
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    .line 849
    const/4 v3, 0x0

    move v2, v1

    .end local v1           #compIdx:I
    .restart local v2       #compIdx:I
    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto :goto_0

    .line 852
    .end local v2           #compIdx:I
    .restart local v1       #compIdx:I
    :cond_1
    const/4 v3, 0x0

    .line 854
    :try_start_1
    iget-object v11, p1, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v11, v10}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    .line 858
    .end local v1           #compIdx:I
    .restart local v2       #compIdx:I
    goto :goto_0

    .line 855
    .end local v2           #compIdx:I
    .restart local v1       #compIdx:I
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 856
    .local v4, e:Ljava/io/IOException;
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 857
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    move v2, v1

    .line 858
    .end local v1           #compIdx:I
    .restart local v2       #compIdx:I
    goto :goto_0

    .line 861
    .end local v4           #e:Ljava/io/IOException;
    :cond_2
    const-string v11, "MultiPart"

    const-string v12, "End Of Multipart Reached and set"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    .line 863
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 864
    const/4 v3, 0x0

    goto :goto_0

    .line 868
    :cond_3
    iget-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    iget-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    if-lez v8, :cond_4

    .line 869
    const/4 v11, 0x1

    sub-int v9, v8, v11

    .line 870
    .local v9, startLoop:I
    move v6, v9

    .local v6, i:I
    :goto_2
    if-ltz v6, :cond_4

    .line 871
    const-string v11, "MultiPart"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Character being unread is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v0, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :try_start_2
    iget-object v11, p1, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    aget v12, v0, v6

    invoke-virtual {v11, v12}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 870
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 874
    :catch_2
    move-exception v11

    move-object v4, v11

    .line 876
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 881
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #i:I
    .end local v9           #startLoop:I
    :cond_4
    iget-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    iget-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 882
    :cond_5
    iget-object v11, p0, Landroid/util/MultiPartStream$MultiPart;->this$0:Landroid/util/MultiPartStream;

    invoke-virtual {v11}, Landroid/util/MultiPartStream;->gotoStartOfLine()Z

    move-result v11

    if-nez v11, :cond_6

    .line 883
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    .line 884
    const-string v11, "MultiPart"

    const-string v12, "CheckPartBoundary:End of Multipart reached in gotStartOfline"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_6
    const/4 v11, 0x1

    .line 892
    :goto_4
    return v11

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .end local v2           #compIdx:I
    .end local v8           #index:I
    .restart local v1       #compIdx:I
    .restart local v7       #index:I
    :cond_8
    move v2, v1

    .end local v1           #compIdx:I
    .restart local v2       #compIdx:I
    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto/16 :goto_0
.end method


# virtual methods
.method public isEndOfMultipart()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    return v0
.end method

.method public isEndOfPart()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    return v0
.end method

.method public isPresentable(Ljava/lang/String;)Z
    .locals 4
    .parameter "contentType"

    .prologue
    const/4 v3, 0x0

    .line 739
    if-nez p1, :cond_0

    move v0, v3

    .line 753
    :goto_0
    return v0

    .line 741
    :cond_0
    const-string v0, "MultiPart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiPart:isPresentable--Content-Type is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v3

    .line 753
    goto :goto_0

    .line 751
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 742
    :sswitch_data_0
    .sparse-switch
        -0x75b40928 -> :sswitch_0
        -0x4b81ef1a -> :sswitch_0
        -0x4a67f528 -> :sswitch_0
        -0x4081b8b3 -> :sswitch_0
        -0x3be2ebcb -> :sswitch_0
        0x23fe04b0 -> :sswitch_0
        0x30b78e68 -> :sswitch_0
        0x7793502a -> :sswitch_0
    .end sparse-switch
.end method

.method public partRead(Landroid/util/MultiPartStream;Landroid/util/Part;)Ljava/util/ArrayList;
    .locals 10
    .parameter "ms"
    .parameter "mPart"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/MultiPartStream;",
            "Landroid/util/Part;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Part$Chunk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x400

    const-string/jumbo v9, "partRead--checkPartBoundary returned true"

    const-string v8, "MultiPart"

    .line 760
    const/4 v3, -0x1

    .local v3, rc:I
    const/4 v1, 0x0

    .line 761
    .local v1, index:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v2, pDataChunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Part$Chunk;>;"
    iget-object v4, p1, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 763
    new-instance v0, Landroid/util/Part$Chunk;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p2, v6}, Landroid/util/Part$Chunk;-><init>(Landroid/util/Part;I)V

    .line 765
    .local v0, dChunk:Landroid/util/Part$Chunk;
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 767
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 769
    iget-boolean v4, v0, Landroid/util/Part$Chunk;->isFull:Z

    if-ne v4, v7, :cond_0

    .line 773
    new-instance v0, Landroid/util/Part$Chunk;

    .end local v0           #dChunk:Landroid/util/Part$Chunk;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p2, v6}, Landroid/util/Part$Chunk;-><init>(Landroid/util/Part;I)V

    .line 774
    .restart local v0       #dChunk:Landroid/util/Part$Chunk;
    const/4 v1, 0x0

    .line 775
    iget-object v4, v0, Landroid/util/Part$Chunk;->mArray:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v1

    .line 776
    iget v4, v0, Landroid/util/Part$Chunk;->mLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/util/Part$Chunk;->mLength:I

    .line 777
    invoke-direct {p0, p1}, Landroid/util/MultiPartStream$MultiPart;->checkPartBoundary(Landroid/util/MultiPartStream;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 778
    const-string v4, "MultiPart"

    const-string/jumbo v4, "partRead--checkPartBoundary returned true"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    :goto_1
    return-object v2

    .line 784
    :cond_0
    iget-object v4, v0, Landroid/util/Part$Chunk;->mArray:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v1

    .line 785
    iget v4, v0, Landroid/util/Part$Chunk;->mLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/util/Part$Chunk;->mLength:I

    .line 786
    iget v4, v0, Landroid/util/Part$Chunk;->mLength:I

    if-ne v4, v6, :cond_1

    .line 787
    iput-boolean v7, v0, Landroid/util/Part$Chunk;->isFull:Z

    .line 788
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_1
    invoke-direct {p0, p1}, Landroid/util/MultiPartStream$MultiPart;->checkPartBoundary(Landroid/util/MultiPartStream;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Landroid/util/Part$Chunk;->isFull:Z

    if-nez v4, :cond_3

    .line 792
    const-string v4, "MultiPart"

    const-string/jumbo v4, "partRead--checkPartBoundary returned true"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 798
    :cond_2
    iget-boolean v4, v0, Landroid/util/Part$Chunk;->isFull:Z

    if-ne v4, v7, :cond_4

    .line 799
    new-instance v0, Landroid/util/Part$Chunk;

    .end local v0           #dChunk:Landroid/util/Part$Chunk;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p2, v6}, Landroid/util/Part$Chunk;-><init>(Landroid/util/Part;I)V

    .line 800
    .restart local v0       #dChunk:Landroid/util/Part$Chunk;
    const/4 v1, 0x0

    .line 801
    iget-object v4, v0, Landroid/util/Part$Chunk;->mArray:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v1

    .line 802
    iget v4, v0, Landroid/util/Part$Chunk;->mLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/util/Part$Chunk;->mLength:I

    .line 814
    :cond_3
    :goto_2
    iget-object v4, p1, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 815
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    :cond_4
    iget-object v4, v0, Landroid/util/Part$Chunk;->mArray:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v1

    .line 806
    iget v4, v0, Landroid/util/Part$Chunk;->mLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/util/Part$Chunk;->mLength:I

    .line 807
    iget v4, v0, Landroid/util/Part$Chunk;->mLength:I

    if-ne v4, v6, :cond_3

    .line 808
    iput-boolean v7, v0, Landroid/util/Part$Chunk;->isFull:Z

    .line 809
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 817
    :cond_5
    const-string v4, "MultiPart"

    const-string/jumbo v4, "partRead--Reached and got -1"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBoundary(Ljava/lang/String;)V
    .locals 7
    .parameter "bParam"

    .prologue
    const-string v6, "--"

    .line 898
    if-nez p1, :cond_0

    .line 899
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Given boundary is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 902
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryLength:I

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, boundary:Ljava/lang/String;
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 907
    .local v3, tmpArr:[B
    iget-object v4, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    array-length v4, v4

    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 909
    :cond_1
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    .line 911
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 912
    const-string v4, "MultiPart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Boundary:The Char from BoundaryArray is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v4, p0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    aget-byte v5, v3, v2

    aput v5, v4, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 916
    .end local v2           #i:I
    .end local v3           #tmpArr:[B
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 917
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 919
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    return-void
.end method

.class public final Lcom/carrotsearch/hppc/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[I


# instance fields
.field public final a:[J

.field public final b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/carrotsearch/hppc/k;->g:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x21
        0x3
        0x31
        0x32
        0x321
        0x4
        0x41
        0x42
        0x421
        0x43
        0x431
        0x432
        0x4321
        0x5
        0x51
        0x52
        0x521
        0x53
        0x531
        0x532
        0x5321
        0x54
        0x541
        0x542
        0x5421
        0x543
        0x5431
        0x5432
        0x54321
        0x6
        0x61
        0x62
        0x621
        0x63
        0x631
        0x632
        0x6321
        0x64
        0x641
        0x642
        0x6421
        0x643
        0x6431
        0x6432
        0x64321
        0x65
        0x651
        0x652
        0x6521
        0x653
        0x6531
        0x6532
        0x65321
        0x654
        0x6541
        0x6542
        0x65421
        0x6543
        0x65431
        0x65432
        0x654321
        0x7
        0x71
        0x72
        0x721
        0x73
        0x731
        0x732
        0x7321
        0x74
        0x741
        0x742
        0x7421
        0x743
        0x7431
        0x7432
        0x74321
        0x75
        0x751
        0x752
        0x7521
        0x753
        0x7531
        0x7532
        0x75321
        0x754
        0x7541
        0x7542
        0x75421
        0x7543
        0x75431
        0x75432
        0x754321
        0x76
        0x761
        0x762
        0x7621
        0x763
        0x7631
        0x7632
        0x76321
        0x764
        0x7641
        0x7642
        0x76421
        0x7643
        0x76431
        0x76432
        0x764321
        0x765
        0x7651
        0x7652
        0x76521
        0x7653
        0x76531
        0x76532
        0x765321
        0x7654
        0x76541
        0x76542
        0x765421
        0x76543
        0x765431
        0x765432
        0x7654321
        0x8
        0x81
        0x82
        0x821
        0x83
        0x831
        0x832
        0x8321
        0x84
        0x841
        0x842
        0x8421
        0x843
        0x8431
        0x8432
        0x84321
        0x85
        0x851
        0x852
        0x8521
        0x853
        0x8531
        0x8532
        0x85321
        0x854
        0x8541
        0x8542
        0x85421
        0x8543
        0x85431
        0x85432
        0x854321
        0x86
        0x861
        0x862
        0x8621
        0x863
        0x8631
        0x8632
        0x86321
        0x864
        0x8641
        0x8642
        0x86421
        0x8643
        0x86431
        0x86432
        0x864321
        0x865
        0x8651
        0x8652
        0x86521
        0x8653
        0x86531
        0x86532
        0x865321
        0x8654
        0x86541
        0x86542
        0x865421
        0x86543
        0x865431
        0x865432
        0x8654321
        0x87
        0x871
        0x872
        0x8721
        0x873
        0x8731
        0x8732
        0x87321
        0x874
        0x8741
        0x8742
        0x87421
        0x8743
        0x87431
        0x87432
        0x874321
        0x875
        0x8751
        0x8752
        0x87521
        0x8753
        0x87531
        0x87532
        0x875321
        0x8754
        0x87541
        0x87542
        0x875421
        0x87543
        0x875431
        0x875432
        0x8754321
        0x876
        0x8761
        0x8762
        0x87621
        0x8763
        0x87631
        0x87632
        0x876321
        0x8764
        0x87641
        0x87642
        0x876421
        0x87643
        0x876431
        0x876432
        0x8764321
        0x8765
        0x87651
        0x87652
        0x876521
        0x87653
        0x876531
        0x876532
        0x8765321
        0x87654
        0x876541
        0x876542
        0x8765421
        0x876543
        0x8765431
        0x8765432
        -0x789abcdf
    .end array-data
.end method

.method public constructor <init>([JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/carrotsearch/hppc/k;->c:I

    iput-object p1, p0, Lcom/carrotsearch/hppc/k;->a:[J

    iput p2, p0, Lcom/carrotsearch/hppc/k;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 8

    iget v0, p0, Lcom/carrotsearch/hppc/k;->f:I

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    ushr-long/2addr v0, v5

    iput-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    iget v0, p0, Lcom/carrotsearch/hppc/k;->e:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/carrotsearch/hppc/k;->e:I

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget v0, p0, Lcom/carrotsearch/hppc/k;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/carrotsearch/hppc/k;->c:I

    iget v1, p0, Lcom/carrotsearch/hppc/k;->b:I

    const/4 v4, -0x1

    if-lt v0, v1, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/carrotsearch/hppc/k;->a:[J

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    iput v4, p0, Lcom/carrotsearch/hppc/k;->e:I

    goto :goto_0

    :cond_2
    long-to-int v4, v0

    if-nez v4, :cond_3

    iget v4, p0, Lcom/carrotsearch/hppc/k;->e:I

    const/16 v6, 0x20

    add-int/2addr v4, v6

    iput v4, p0, Lcom/carrotsearch/hppc/k;->e:I

    ushr-long/2addr v0, v6

    iput-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    :cond_3
    iget-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    const-wide/32 v6, 0xffff

    and-long/2addr v6, v0

    cmp-long v4, v6, v2

    if-nez v4, :cond_4

    iget v4, p0, Lcom/carrotsearch/hppc/k;->e:I

    const/16 v6, 0x10

    add-int/2addr v4, v6

    iput v4, p0, Lcom/carrotsearch/hppc/k;->e:I

    ushr-long/2addr v0, v6

    iput-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    :cond_4
    iget-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    const-wide/16 v6, 0xff

    and-long/2addr v6, v0

    cmp-long v2, v6, v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/carrotsearch/hppc/k;->e:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/carrotsearch/hppc/k;->e:I

    ushr-long/2addr v0, v5

    iput-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    :cond_5
    iget-wide v0, p0, Lcom/carrotsearch/hppc/k;->d:J

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lcom/carrotsearch/hppc/k;->g:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/carrotsearch/hppc/k;->f:I

    :cond_6
    iget v0, p0, Lcom/carrotsearch/hppc/k;->f:I

    and-int/lit8 v1, v0, 0xf

    iget v2, p0, Lcom/carrotsearch/hppc/k;->e:I

    add-int/2addr v1, v2

    ushr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/carrotsearch/hppc/k;->f:I

    iget p0, p0, Lcom/carrotsearch/hppc/k;->c:I

    shl-int/lit8 p0, p0, 0x6

    add-int/2addr p0, v1

    return p0
.end method

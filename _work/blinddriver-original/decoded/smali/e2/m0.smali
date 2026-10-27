.class public final Le2/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/c;


# instance fields
.field public l:Z

.field public m:J

.field public n:J

.field public final synthetic o:Le2/p0;


# direct methods
.method public constructor <init>(Le2/p0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/m0;->o:Le2/p0;

    const-wide v0, 0x7fffffff7fffffffL

    iput-wide v0, p0, Le2/m0;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/m0;->n:J

    return-void
.end method


# virtual methods
.method public final S()F
    .locals 0

    iget-object p0, p0, Le2/m0;->o:Le2/p0;

    invoke-interface {p0}, Lb3/c;->S()F

    move-result p0

    return p0
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Le2/m0;->o:Le2/p0;

    invoke-interface {p0}, Lb3/c;->a()F

    move-result p0

    return p0
.end method

.method public final b(Lc2/m;F)V
    .locals 5

    iget-object p0, p0, Le2/m0;->o:Le2/p0;

    iget-object v0, p0, Le2/p0;->x:Le2/y1;

    if-nez v0, :cond_0

    new-instance v0, Le2/y1;

    invoke-direct {v0}, Le2/y1;-><init>()V

    iput-object v0, p0, Le2/p0;->x:Le2/y1;

    :cond_0
    iget-object p0, v0, Le2/y1;->b:[Lc2/m;

    invoke-static {p0, p1}, Lu8/l;->x0([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x1

    if-gez p0, :cond_2

    iget p0, v0, Le2/y1;->a:I

    iget-object v2, v0, Le2/y1;->b:[Lc2/m;

    array-length v3, v2

    if-ne p0, v3, :cond_1

    mul-int/lit8 v3, p0, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "copyOf(...)"

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Lc2/m;

    iput-object v2, v0, Le2/y1;->b:[Lc2/m;

    iget-object v2, v0, Le2/y1;->c:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Le2/y1;->c:[F

    iget-object v2, v0, Le2/y1;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Le2/y1;->d:[B

    :cond_1
    iget-object v2, v0, Le2/y1;->b:[Lc2/m;

    aput-object p1, v2, p0

    iget-object p1, v0, Le2/y1;->d:[B

    const/4 v2, 0x3

    aput-byte v2, p1, p0

    iget-object p1, v0, Le2/y1;->c:[F

    aput p2, p1, p0

    iget p0, v0, Le2/y1;->a:I

    add-int/2addr p0, v1

    iput p0, v0, Le2/y1;->a:I

    return-void

    :cond_2
    iget-object p1, v0, Le2/y1;->c:[F

    aget v2, p1, p0

    cmpg-float v2, v2, p2

    if-nez v2, :cond_4

    iget-object p1, v0, Le2/y1;->d:[B

    aget-byte p2, p1, p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    aput-byte p2, p1, p0

    :cond_3
    return-void

    :cond_4
    aput p2, p1, p0

    iget-object p1, v0, Le2/y1;->d:[B

    aput-byte v1, p1, p0

    return-void
.end method

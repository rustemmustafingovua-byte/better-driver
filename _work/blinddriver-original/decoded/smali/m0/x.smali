.class public final Lm0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lp2/j0;


# direct methods
.method public constructor <init>(JIIIILp2/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lm0/x;->a:J

    iput p3, p0, Lm0/x;->b:I

    iput p4, p0, Lm0/x;->c:I

    iput p5, p0, Lm0/x;->d:I

    iput p6, p0, Lm0/x;->e:I

    iput-object p7, p0, Lm0/x;->f:Lp2/j0;

    return-void
.end method


# virtual methods
.method public final a(I)Lm0/z;
    .locals 4

    new-instance v0, Lm0/z;

    iget-object v1, p0, Lm0/x;->f:Lp2/j0;

    invoke-static {v1, p1}, Lm0/d1;->u(Lp2/j0;I)La3/j;

    move-result-object v1

    iget-wide v2, p0, Lm0/x;->a:J

    invoke-direct {v0, v1, p1, v2, v3}, Lm0/z;-><init>(La3/j;IJ)V

    return-object v0
.end method

.method public final b()Lm0/k;
    .locals 1

    iget v0, p0, Lm0/x;->c:I

    iget p0, p0, Lm0/x;->d:I

    if-ge v0, p0, :cond_0

    sget-object p0, Lm0/k;->m:Lm0/k;

    return-object p0

    :cond_0
    if-le v0, p0, :cond_1

    sget-object p0, Lm0/k;->l:Lm0/k;

    return-object p0

    :cond_1
    sget-object p0, Lm0/k;->n:Lm0/k;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SelectionInfo(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lm0/x;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", range=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lm0/x;->f:Lp2/j0;

    invoke-static {v3, v1}, Lm0/d1;->u(Lp2/j0;I)La3/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/x;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Lm0/d1;->u(Lp2/j0;I)La3/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), prevOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lm0/x;->e:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lu2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lu2/k;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:Lw2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lu2/k;

    const/4 v5, 0x1

    sget-object v6, Lw2/b;->n:Lw2/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lu2/k;-><init>(ZIZIILw2/b;)V

    sput-object v0, Lu2/k;->g:Lu2/k;

    return-void
.end method

.method public constructor <init>(ZIZIILw2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lu2/k;->a:Z

    iput p2, p0, Lu2/k;->b:I

    iput-boolean p3, p0, Lu2/k;->c:Z

    iput p4, p0, Lu2/k;->d:I

    iput p5, p0, Lu2/k;->e:I

    iput-object p6, p0, Lu2/k;->f:Lw2/b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lu2/k;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lu2/k;

    iget-boolean v0, p1, Lu2/k;->a:Z

    iget-boolean v1, p0, Lu2/k;->a:Z

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lu2/k;->b:I

    iget v1, p1, Lu2/k;->b:I

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lu2/k;->c:Z

    iget-boolean v1, p1, Lu2/k;->c:Z

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lu2/k;->d:I

    iget v1, p1, Lu2/k;->d:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lu2/k;->e:I

    iget v1, p1, Lu2/k;->e:I

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lu2/k;->f:Lw2/b;

    iget-object p1, p1, Lu2/k;->f:Lw2/b;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lu2/k;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lu2/k;->b:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-boolean v2, p0, Lu2/k;->c:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget v2, p0, Lu2/k;->d:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v1, p0, Lu2/k;->e:I

    const/16 v2, 0x3c1

    invoke-static {v1, v0, v2}, Lm/a;->e(III)I

    move-result v0

    iget-object p0, p0, Lu2/k;->f:Lw2/b;

    iget-object p0, p0, Lw2/b;->l:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImeOptions(singleLine="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lu2/k;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", capitalization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu2/k;->b:I

    invoke-static {v1}, Lu2/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoCorrect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lu2/k;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyboardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu2/k;->d:I

    invoke-static {v1}, Lu2/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imeAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu2/k;->e:I

    invoke-static {v1}, Lu2/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platformImeOptions=null, hintLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu2/k;->f:Lw2/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

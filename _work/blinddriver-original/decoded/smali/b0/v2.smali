.class public final Lb0/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lg5/c;


# instance fields
.field public final a:Lr0/a1;

.field public final b:Lr0/a1;

.field public final c:Lr0/b1;

.field public d:Ll1/c;

.field public e:J

.field public final f:Lr0/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/u2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb0/u2;-><init>(I)V

    new-instance v1, Lad/b2;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lad/b2;-><init>(I)V

    new-instance v2, Lb0/x;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lb0/x;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lj9/b0;->b(ILjava/lang/Object;)V

    new-instance v0, Lg5/c;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lb0/v2;->g:Lg5/c;

    return-void
.end method

.method public constructor <init>(Lr/m1;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/a1;

    invoke-direct {v0, p2}, Lr0/a1;-><init>(F)V

    iput-object v0, p0, Lb0/v2;->a:Lr0/a1;

    new-instance p2, Lr0/a1;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lr0/a1;-><init>(F)V

    iput-object p2, p0, Lb0/v2;->b:Lr0/a1;

    new-instance p2, Lr0/b1;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lr0/b1;-><init>(I)V

    iput-object p2, p0, Lb0/v2;->c:Lr0/b1;

    sget-object p2, Ll1/c;->e:Ll1/c;

    iput-object p2, p0, Lb0/v2;->d:Ll1/c;

    sget-wide v0, Lp2/l0;->b:J

    iput-wide v0, p0, Lb0/v2;->e:J

    sget-object p2, Lr0/e;->r:Lr0/e;

    new-instance v0, Lr0/e1;

    invoke-direct {v0, p1, p2}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object v0, p0, Lb0/v2;->f:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a(Lr/m1;Ll1/c;II)V
    .locals 8

    sub-int/2addr p4, p3

    int-to-float p4, p4

    iget-object v0, p0, Lb0/v2;->b:Lr0/a1;

    invoke-virtual {v0, p4}, Lr0/a1;->h(F)V

    iget v0, p2, Ll1/c;->a:F

    iget v1, p2, Ll1/c;->b:F

    iget-object v2, p0, Lb0/v2;->d:Ll1/c;

    iget v3, v2, Ll1/c;->a:F

    cmpg-float v3, v0, v3

    iget-object v4, p0, Lb0/v2;->a:Lr0/a1;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget v2, v2, Ll1/c;->b:F

    cmpg-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    sget-object v2, Lr/m1;->l:Lr/m1;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p2, Ll1/c;->d:F

    goto :goto_1

    :cond_3
    iget p1, p2, Ll1/c;->c:F

    :goto_1
    invoke-virtual {v4}, Lr0/a1;->g()F

    move-result v1

    int-to-float v2, p3

    add-float v3, v1, v2

    cmpl-float v6, p1, v3

    if-lez v6, :cond_4

    :goto_2
    sub-float/2addr p1, v3

    goto :goto_3

    :cond_4
    cmpg-float v6, v0, v1

    if-gez v6, :cond_5

    sub-float v7, p1, v0

    cmpl-float v7, v7, v2

    if-lez v7, :cond_5

    goto :goto_2

    :cond_5
    if-gez v6, :cond_6

    sub-float/2addr p1, v0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_6

    sub-float p1, v0, v1

    goto :goto_3

    :cond_6
    move p1, v5

    :goto_3
    invoke-virtual {v4}, Lr0/a1;->g()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {v4, v0}, Lr0/a1;->h(F)V

    iput-object p2, p0, Lb0/v2;->d:Ll1/c;

    :goto_4
    invoke-virtual {v4}, Lr0/a1;->g()F

    move-result p1

    invoke-static {p1, v5, p4}, Lg6/c1;->e(FFF)F

    move-result p1

    invoke-virtual {v4, p1}, Lr0/a1;->h(F)V

    iget-object p0, p0, Lb0/v2;->c:Lr0/b1;

    invoke-virtual {p0, p3}, Lr0/b1;->h(I)V

    return-void
.end method

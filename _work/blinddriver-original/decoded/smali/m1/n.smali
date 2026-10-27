.class public final Lm1/n;
.super Lm1/m;
.source "SourceFile"


# instance fields
.field public a:Lb0/l1;

.field public b:J

.field public final synthetic c:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/n;->c:Landroid/graphics/Shader;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Lm1/n;->b:J

    return-void
.end method


# virtual methods
.method public final a(FJLf6/v;)V
    .locals 4

    iget-object v0, p0, Lm1/n;->a:Lb0/l1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lm1/n;->b:J

    invoke-static {v2, v3, p2, p3}, Ll1/e;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    invoke-static {p2, p3}, Ll1/e;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lm1/n;->a:Lb0/l1;

    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide p2, p0, Lm1/n;->b:J

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm1/n;->a:Lb0/l1;

    if-nez v0, :cond_2

    new-instance v0, Lb0/l1;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lb0/l1;-><init>(IZ)V

    iput-object v0, p0, Lm1/n;->a:Lb0/l1;

    :cond_2
    iget-object v2, p0, Lm1/n;->c:Landroid/graphics/Shader;

    iput-object v2, v0, Lb0/l1;->m:Ljava/lang/Object;

    iput-object v0, p0, Lm1/n;->a:Lb0/l1;

    iput-wide p2, p0, Lm1/n;->b:J

    :cond_3
    :goto_0
    iget-object p0, p4, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-static {p2}, Lm1/v;->c(I)J

    move-result-wide p2

    sget-wide v2, Lm1/p;->b:J

    invoke-static {p2, p3, v2, v3}, Lm1/p;->c(JJ)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p4, v2, v3}, Lf6/v;->p(J)V

    :cond_4
    iget-object p2, p4, Lf6/v;->c:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Shader;

    if-eqz v0, :cond_5

    iget-object p3, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Shader;

    goto :goto_1

    :cond_5
    move-object p3, v1

    :goto_1
    invoke-static {p2, p3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    if-eqz v0, :cond_6

    iget-object p2, v0, Lb0/l1;->m:Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Landroid/graphics/Shader;

    :cond_6
    invoke-virtual {p4, v1}, Lf6/v;->s(Landroid/graphics/Shader;)V

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p0, p2

    cmpg-float p0, p0, p1

    if-nez p0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p4, p1}, Lf6/v;->n(F)V

    return-void
.end method

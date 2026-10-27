.class public final Lb0/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb0/r1;

.field public final b:Lm0/v1;

.field public final c:Lu2/x;

.field public final d:Z

.field public final e:Z

.field public final f:Lm0/z1;

.field public final g:Lu2/q;

.field public final h:Lb0/h3;

.field public final i:Lb0/c1;

.field public final j:Lb0/j1;

.field public final k:Li9/c;

.field public final l:I


# direct methods
.method public constructor <init>(Lb0/r1;Lm0/v1;Lu2/x;ZZLm0/z1;Lu2/q;Lb0/h3;Lb0/c1;Li9/c;I)V
    .locals 1

    sget-object v0, Lb0/n1;->a:Lb0/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/i2;->a:Lb0/r1;

    iput-object p2, p0, Lb0/i2;->b:Lm0/v1;

    iput-object p3, p0, Lb0/i2;->c:Lu2/x;

    iput-boolean p4, p0, Lb0/i2;->d:Z

    iput-boolean p5, p0, Lb0/i2;->e:Z

    iput-object p6, p0, Lb0/i2;->f:Lm0/z1;

    iput-object p7, p0, Lb0/i2;->g:Lu2/q;

    iput-object p8, p0, Lb0/i2;->h:Lb0/h3;

    iput-object p9, p0, Lb0/i2;->i:Lb0/c1;

    iput-object v0, p0, Lb0/i2;->j:Lb0/j1;

    iput-object p10, p0, Lb0/i2;->k:Li9/c;

    iput p11, p0, Lb0/i2;->l:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lb0/i2;->a:Lb0/r1;

    iget-object v0, v0, Lb0/r1;->d:Lg5/e;

    invoke-static {p1}, Lu8/m;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v1, Lu2/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lg5/e;->h(Ljava/util/List;)Lu2/x;

    move-result-object p1

    iget-object p0, p0, Lb0/i2;->k:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public final Lm0/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Lc2/u;

.field public final d:Z

.field public final e:Lm0/a0;

.field public final f:Lad/m0;

.field public final g:Lk/z;

.field public final h:Ljava/util/ArrayList;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(JJLc2/u;ZLm0/a0;Lad/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lm0/u0;->a:J

    iput-wide p3, p0, Lm0/u0;->b:J

    iput-object p5, p0, Lm0/u0;->c:Lc2/u;

    iput-boolean p6, p0, Lm0/u0;->d:Z

    iput-object p7, p0, Lm0/u0;->e:Lm0/a0;

    iput-object p8, p0, Lm0/u0;->f:Lad/m0;

    sget p1, Lk/n;->a:I

    new-instance p1, Lk/z;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lk/z;-><init>(I)V

    iput-object p1, p0, Lm0/u0;->g:Lk/z;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm0/u0;->h:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lm0/u0;->i:I

    iput p1, p0, Lm0/u0;->j:I

    iput p1, p0, Lm0/u0;->k:I

    return-void
.end method


# virtual methods
.method public final a(ILm0/l;Lm0/l;)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lm0/d1;->y(Lm0/l;Lm0/l;)Lm0/l;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    if-eq p2, p3, :cond_2

    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    :goto_0
    return p1

    :cond_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    iget p0, p0, Lm0/u0;->k:I

    return p0

    :cond_3
    iget p0, p0, Lm0/u0;->k:I

    sub-int/2addr p0, p3

    return p0
.end method

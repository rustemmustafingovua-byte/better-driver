.class public final Lb0/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp2/g;

.field public final b:Lp2/m0;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:Lb3/c;

.field public final h:Lt2/d;

.field public final i:Ljava/util/List;

.field public j:Landroidx/lifecycle/a1;

.field public k:Lb3/m;


# direct methods
.method public constructor <init>(Lp2/g;Lp2/m0;ZLb3/c;Lt2/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/b2;->a:Lp2/g;

    iput-object p2, p0, Lb0/b2;->b:Lp2/m0;

    const p1, 0x7fffffff

    iput p1, p0, Lb0/b2;->c:I

    const/4 p1, 0x1

    iput p1, p0, Lb0/b2;->d:I

    iput-boolean p3, p0, Lb0/b2;->e:Z

    iput p1, p0, Lb0/b2;->f:I

    iput-object p4, p0, Lb0/b2;->g:Lb3/c;

    iput-object p5, p0, Lb0/b2;->h:Lt2/d;

    sget-object p1, Lu8/r;->l:Lu8/r;

    iput-object p1, p0, Lb0/b2;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lb3/m;)V
    .locals 7

    iget-object v0, p0, Lb0/b2;->j:Landroidx/lifecycle/a1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb0/b2;->k:Lb3/m;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/a1;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object p1, p0, Lb0/b2;->k:Lb3/m;

    iget-object v0, p0, Lb0/b2;->b:Lp2/m0;

    invoke-static {v0, p1}, Lp2/d0;->h(Lp2/m0;Lb3/m;)Lp2/m0;

    move-result-object v3

    new-instance v1, Landroidx/lifecycle/a1;

    iget-object v2, p0, Lb0/b2;->a:Lp2/g;

    iget-object v4, p0, Lb0/b2;->i:Ljava/util/List;

    iget-object v5, p0, Lb0/b2;->g:Lb3/c;

    iget-object v6, p0, Lb0/b2;->h:Lt2/d;

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/a1;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;Lb3/c;Lt2/d;)V

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Lb0/b2;->j:Landroidx/lifecycle/a1;

    return-void
.end method

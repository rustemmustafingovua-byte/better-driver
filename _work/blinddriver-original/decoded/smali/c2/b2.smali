.class public final Lc2/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/e1;

.field public final b:Lr0/e1;

.field public final c:Lr0/a1;

.field public final d:Lr0/c1;

.field public final e:Lr0/a1;

.field public final f:Lc2/n;

.field public final g:Lc2/n;

.field public h:J

.field public i:J

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Lc2/b2;->a:Lr0/e1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Lc2/b2;->b:Lr0/e1;

    new-instance v0, Lr0/a1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr0/a1;-><init>(F)V

    iput-object v0, p0, Lc2/b2;->c:Lr0/a1;

    new-instance v0, Lr0/c1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lr0/c1;-><init>(J)V

    iput-object v0, p0, Lc2/b2;->d:Lr0/c1;

    new-instance v0, Lr0/a1;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lr0/a1;-><init>(F)V

    iput-object v0, p0, Lc2/b2;->e:Lr0/a1;

    const-string v0, " source"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc2/n;

    invoke-direct {v1, v0}, Lc2/n;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lc2/b2;->f:Lc2/n;

    const-string v0, " target"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lc2/n;

    invoke-direct {v0, p1}, Lc2/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc2/b2;->g:Lc2/n;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc2/b2;->h:J

    iput-wide v0, p0, Lc2/b2;->i:J

    iput-wide v0, p0, Lc2/b2;->j:J

    iput-wide v0, p0, Lc2/b2;->k:J

    return-void
.end method

.class public final Lr/i1;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lr/n2;

.field public m:Lj9/w;

.field public n:F

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lgc/f;

.field public q:I


# direct methods
.method public constructor <init>(Lgc/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Lr/i1;->p:Lgc/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lr/i1;->o:Ljava/lang/Object;

    iget p1, p0, Lr/i1;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/i1;->q:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lr/i1;->p:Lgc/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lgc/f;->a(Lgc/f;Lr/n2;Lr/g1;FFLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

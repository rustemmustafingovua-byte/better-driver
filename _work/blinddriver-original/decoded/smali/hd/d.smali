.class public final Lhd/d;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;

.field public m:Lj9/y;

.field public n:Landroidx/lifecycle/a1;

.field public o:Lj9/u;

.field public p:Lj9/x;

.field public q:Lhd/k;

.field public r:J

.field public s:I

.field public t:I

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Lhd/e;

.field public w:I


# direct methods
.method public constructor <init>(Lhd/e;La9/c;)V
    .locals 0

    iput-object p1, p0, Lhd/d;->v:Lhd/e;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lhd/d;->u:Ljava/lang/Object;

    iget p1, p0, Lhd/d;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lhd/d;->w:I

    iget-object p1, p0, Lhd/d;->v:Lhd/e;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lhd/e;->a(Lhd/e;Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Lkd/i;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lkd/k;

.field public m:J

.field public n:Z

.field public o:Z

.field public p:Z

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lkd/j;

.field public s:I


# direct methods
.method public constructor <init>(Lkd/j;La9/c;)V
    .locals 0

    iput-object p1, p0, Lkd/i;->r:Lkd/j;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkd/i;->q:Ljava/lang/Object;

    iget p1, p0, Lkd/i;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkd/i;->s:I

    iget-object p1, p0, Lkd/i;->r:Lkd/j;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lkd/j;->a(Lkd/j;Lkd/m;Lkd/d0;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

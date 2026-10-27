.class public final Lp/h;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:J

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lp/j;

.field public o:I


# direct methods
.method public constructor <init>(Lp/j;La9/c;)V
    .locals 0

    iput-object p1, p0, Lp/h;->n:Lp/j;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lp/h;->m:Ljava/lang/Object;

    iget p1, p0, Lp/h;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp/h;->o:I

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    iget-object v2, p0, Lp/h;->n:Lp/j;

    invoke-virtual {v2, v0, v1, p1, p0}, Lp/j;->b(JLr/m2;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

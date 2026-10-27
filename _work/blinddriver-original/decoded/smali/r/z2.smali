.class public final Lr/z2;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lt8/e;

.field public m:Li9/a;

.field public n:F

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lr/a3;

.field public q:I


# direct methods
.method public constructor <init>(Lr/a3;La9/c;)V
    .locals 0

    iput-object p1, p0, Lr/z2;->p:Lr/a3;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/z2;->o:Ljava/lang/Object;

    iget p1, p0, Lr/z2;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/z2;->q:I

    iget-object p1, p0, Lr/z2;->p:Lr/a3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lr/a3;->a(Lb0/o;Lb0/c3;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

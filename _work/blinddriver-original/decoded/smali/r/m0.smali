.class public final Lr/m0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lr/v;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lr/o0;

.field public o:I


# direct methods
.method public constructor <init>(Lr/o0;La9/c;)V
    .locals 0

    iput-object p1, p0, Lr/m0;->n:Lr/o0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/m0;->m:Ljava/lang/Object;

    iget p1, p0, Lr/m0;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/m0;->o:I

    iget-object p1, p0, Lr/m0;->n:Lr/o0;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lr/o0;->R0(Lr/o0;Lr/v;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

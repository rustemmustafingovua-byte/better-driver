.class public final Lid/o;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lid/s;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lid/p;

.field public o:I


# direct methods
.method public constructor <init>(Lid/p;La9/c;)V
    .locals 0

    iput-object p1, p0, Lid/o;->n:Lid/p;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lid/o;->m:Ljava/lang/Object;

    iget p1, p0, Lid/o;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lid/o;->o:I

    iget-object p1, p0, Lid/o;->n:Lid/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lid/p;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

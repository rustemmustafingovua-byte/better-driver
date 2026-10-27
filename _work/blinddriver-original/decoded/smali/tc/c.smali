.class public final Ltc/c;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:J

.field public m:Lua/nav/alerts/AlertsDto;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ltc/e;

.field public p:I


# direct methods
.method public constructor <init>(Ltc/e;La9/c;)V
    .locals 0

    iput-object p1, p0, Ltc/c;->o:Ltc/e;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ltc/c;->n:Ljava/lang/Object;

    iget p1, p0, Ltc/c;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltc/c;->p:I

    iget-object p1, p0, Ltc/c;->o:Ltc/e;

    invoke-static {p1, p0}, Ltc/e;->a(Ltc/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

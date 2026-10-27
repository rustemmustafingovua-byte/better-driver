.class public Ltb/d;
.super Le1/b;
.source "SourceFile"


# instance fields
.field public final b:Lpb/a;

.field public final c:Lg5/m;


# direct methods
.method public constructor <init>(Lpb/a;Lg5/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb/d;->b:Lpb/a;

    iput-object p2, p0, Ltb/d;->c:Lg5/m;

    new-instance p1, Lq3/k;

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lq3/k;-><init>(II)V

    iput-object p1, p0, Le1/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ltb/d;->b:Lpb/a;

    iget-wide v1, p0, Lpb/a;->l:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lpb/a;->m:D

    const-string p0, ")"

    invoke-static {v0, v1, v2, p0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

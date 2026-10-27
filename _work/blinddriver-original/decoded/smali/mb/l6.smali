.class public final Lmb/l6;
.super Lhb/d;
.source "SourceFile"


# instance fields
.field public final f:Lmb/a;

.field public g:[Lmb/k6;

.field public h:Ljava/lang/Class;

.field public i:[Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, La/a;-><init>(I)V

    new-instance v0, Lmb/a;

    invoke-direct {v0}, Lmb/a;-><init>()V

    iput-object v0, p0, Lmb/l6;->f:Lmb/a;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lmb/l6;->h:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final F(I)Lmb/k6;
    .locals 0

    iget-object p0, p0, Lmb/l6;->g:[Lmb/k6;

    if-eqz p0, :cond_0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\"getScript()\" invoked before \"setScriptCount()\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final G(I)V
    .locals 6

    iget-object v0, p0, Lmb/l6;->g:[Lmb/k6;

    if-nez v0, :cond_0

    new-array v0, p1, [Lmb/k6;

    iput-object v0, p0, Lmb/l6;->g:[Lmb/k6;

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v2, Lmb/k6;

    const-string v3, "*"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "eval*"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lmb/k6;->b:Z

    new-array v4, p0, [Ljava/lang/String;

    iput-object v4, v2, Lmb/k6;->e:[Ljava/lang/String;

    new-array v4, p0, [Ljava/lang/Class;

    iput-object v4, v2, Lmb/k6;->f:[Ljava/lang/Class;

    new-array v4, p0, [Ljava/lang/Class;

    iput-object v4, v2, Lmb/k6;->g:[Ljava/lang/Class;

    iput-object v3, v2, Lmb/k6;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p0, v0

    if-ne p1, p0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent script count; previously "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", now "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

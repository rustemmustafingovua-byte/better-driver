.class public final Lsa/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lbb/j;

.field public static final e:Lbb/j;

.field public static final f:Lbb/j;

.field public static final g:Lbb/j;

.field public static final h:Lbb/j;

.field public static final i:Lbb/j;


# instance fields
.field public final a:Lbb/j;

.field public final b:Lbb/j;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lbb/j;->o:Lbb/j;

    const-string v0, ":"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v0

    sput-object v0, Lsa/d;->d:Lbb/j;

    const-string v0, ":status"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v0

    sput-object v0, Lsa/d;->e:Lbb/j;

    const-string v0, ":method"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v0

    sput-object v0, Lsa/d;->f:Lbb/j;

    const-string v0, ":path"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v0

    sput-object v0, Lsa/d;->g:Lbb/j;

    const-string v0, ":scheme"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v0

    sput-object v0, Lsa/d;->h:Lbb/j;

    const-string v0, ":authority"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v0

    sput-object v0, Lsa/d;->i:Lbb/j;

    return-void
.end method

.method public constructor <init>(Lbb/j;Lbb/j;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsa/d;->a:Lbb/j;

    .line 3
    iput-object p2, p0, Lsa/d;->b:Lbb/j;

    .line 4
    invoke-virtual {p1}, Lbb/j;->a()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lbb/j;->a()I

    move-result p2

    add-int/2addr p2, p1

    .line 5
    iput p2, p0, Lsa/d;->c:I

    return-void
.end method

.method public constructor <init>(Lbb/j;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lbb/j;->o:Lbb/j;

    invoke-static {p2}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lsa/d;-><init>(Lbb/j;Lbb/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lbb/j;->o:Lbb/j;

    invoke-static {p1}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object p1

    invoke-static {p2}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lsa/d;-><init>(Lbb/j;Lbb/j;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsa/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsa/d;

    iget-object v1, p0, Lsa/d;->a:Lbb/j;

    iget-object v3, p1, Lsa/d;->a:Lbb/j;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lsa/d;->b:Lbb/j;

    iget-object p1, p1, Lsa/d;->b:Lbb/j;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lsa/d;->a:Lbb/j;

    invoke-virtual {v0}, Lbb/j;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lsa/d;->b:Lbb/j;

    invoke-virtual {p0}, Lbb/j;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsa/d;->a:Lbb/j;

    invoke-virtual {v1}, Lbb/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsa/d;->b:Lbb/j;

    invoke-virtual {p0}, Lbb/j;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

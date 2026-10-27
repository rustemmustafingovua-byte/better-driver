.class public final Lla/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lr9/i;

.field public static final d:Lr9/i;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr9/i;

    const-string v1, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lla/t;->c:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lla/t;->d:Lr9/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "mediaType"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parameterNamesAndValues"

    invoke-static {p4, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/t;->a:Ljava/lang/String;

    iput-object p4, p0, Lla/t;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lla/t;)Ljava/nio/charset/Charset;
    .locals 5

    iget-object p0, p0, Lla/t;->b:[Ljava/lang/String;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Ly4/s;->s(III)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    :goto_0
    aget-object v3, p0, v2

    const-string v4, "charset"

    invoke-static {v3, v4}, Lr9/r;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-object p0, p0, v2

    goto :goto_1

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lla/t;

    if-eqz v0, :cond_0

    check-cast p1, Lla/t;

    iget-object p1, p1, Lla/t;->a:Ljava/lang/String;

    iget-object p0, p0, Lla/t;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lla/t;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lla/t;->a:Ljava/lang/String;

    return-object p0
.end method

.class public final enum Lr5/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr5/g;

.field public static final enum m:Lr5/g;

.field public static final enum n:Lr5/g;

.field public static final enum o:Lr5/g;

.field public static final synthetic p:[Lr5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lr5/g;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/g;->l:Lr5/g;

    new-instance v1, Lr5/g;

    const-string v2, "NON_PRIVATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lr5/g;

    const-string v3, "PROTECTED_AND_PUBLIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lr5/g;

    const-string v4, "PUBLIC_ONLY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr5/g;->m:Lr5/g;

    new-instance v4, Lr5/g;

    const-string v5, "NONE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lr5/g;->n:Lr5/g;

    new-instance v5, Lr5/g;

    const-string v6, "DEFAULT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lr5/g;->o:Lr5/g;

    filled-new-array/range {v0 .. v5}, [Lr5/g;

    move-result-object v0

    sput-object v0, Lr5/g;->p:[Lr5/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/g;
    .locals 1

    const-class v0, Lr5/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/g;

    return-object p0
.end method

.method public static values()[Lr5/g;
    .locals 1

    sget-object v0, Lr5/g;->p:[Lr5/g;

    invoke-virtual {v0}, [Lr5/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Member;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    return p0

    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_3
    return v0
.end method

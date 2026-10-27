.class public final enum Lmc/k0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lf8/b4;


# static fields
.field public static final enum m:Lmc/k0;

.field public static final enum n:Lmc/k0;

.field public static final enum o:Lmc/k0;

.field public static final synthetic p:[Lmc/k0;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmc/k0;

    const-string v1, "NODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmc/k0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmc/k0;->m:Lmc/k0;

    new-instance v1, Lmc/k0;

    const-string v2, "WAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lmc/k0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lmc/k0;->n:Lmc/k0;

    new-instance v2, Lmc/k0;

    const-string v3, "RELATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lmc/k0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lmc/k0;->o:Lmc/k0;

    filled-new-array {v0, v1, v2}, [Lmc/k0;

    move-result-object v0

    sput-object v0, Lmc/k0;->p:[Lmc/k0;

    invoke-static {}, Lmc/k0;->values()[Lmc/k0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lmc/k0;->l:I

    return-void
.end method

.method public static b(I)Lmc/k0;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lmc/k0;->o:Lmc/k0;

    return-object p0

    :cond_1
    sget-object p0, Lmc/k0;->n:Lmc/k0;

    return-object p0

    :cond_2
    sget-object p0, Lmc/k0;->m:Lmc/k0;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmc/k0;
    .locals 1

    const-class v0, Lmc/k0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmc/k0;

    return-object p0
.end method

.method public static values()[Lmc/k0;
    .locals 1

    sget-object v0, Lmc/k0;->p:[Lmc/k0;

    invoke-virtual {v0}, [Lmc/k0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmc/k0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lmc/k0;->l:I

    return p0
.end method

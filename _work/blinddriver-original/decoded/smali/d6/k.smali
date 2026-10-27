.class public final enum Ld6/k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ld6/g;


# static fields
.field public static final enum m:Ld6/k;

.field public static final enum n:Ld6/k;

.field public static final synthetic o:[Ld6/k;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld6/k;

    const-string v1, "READ_ENUM_KEYS_USING_INDEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld6/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld6/k;->m:Ld6/k;

    new-instance v1, Ld6/k;

    const-string v2, "WRITE_ENUMS_TO_LOWERCASE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ld6/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ld6/k;->n:Ld6/k;

    filled-new-array {v0, v1}, [Ld6/k;

    move-result-object v0

    sput-object v0, Ld6/k;->o:[Ld6/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Ld6/k;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld6/k;
    .locals 1

    const-class v0, Ld6/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld6/k;

    return-object p0
.end method

.method public static values()[Ld6/k;
    .locals 1

    sget-object v0, Ld6/k;->o:[Ld6/k;

    invoke-virtual {v0}, [Ld6/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld6/k;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ld6/k;->l:I

    return p0
.end method

.method public final c(I)Z
    .locals 0

    iget p0, p0, Ld6/k;->l:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.class public final enum Ls5/r;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements La6/j;


# static fields
.field public static final enum m:Ls5/r;

.field public static final enum n:Ls5/r;

.field public static final synthetic o:[Ls5/r;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ls5/r;

    const-string v1, "DUPLICATE_PROPERTIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls5/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls5/r;->m:Ls5/r;

    new-instance v1, Ls5/r;

    const-string v2, "SCALARS_AS_OBJECTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls5/r;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ls5/r;

    const-string v3, "UNTYPED_SCALARS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ls5/r;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ls5/r;->n:Ls5/r;

    new-instance v3, Ls5/r;

    const-string v4, "EXACT_FLOATS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ls5/r;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Ls5/r;

    move-result-object v0

    sput-object v0, Ls5/r;->o:[Ls5/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Ls5/r;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls5/r;
    .locals 1

    const-class v0, Ls5/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls5/r;

    return-object p0
.end method

.method public static values()[Ls5/r;
    .locals 1

    sget-object v0, Ls5/r;->o:[Ls5/r;

    invoke-virtual {v0}, [Ls5/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls5/r;

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

    iget p0, p0, Ls5/r;->l:I

    return p0
.end method

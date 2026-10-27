.class public final enum Lu/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lu/f0;

.field public static final enum m:Lu/f0;

.field public static final synthetic n:[Lu/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lu/f0;

    const-string v1, "Min"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/f0;->l:Lu/f0;

    new-instance v1, Lu/f0;

    const-string v2, "Max"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu/f0;->m:Lu/f0;

    filled-new-array {v0, v1}, [Lu/f0;

    move-result-object v0

    sput-object v0, Lu/f0;->n:[Lu/f0;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/f0;
    .locals 1

    const-class v0, Lu/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/f0;

    return-object p0
.end method

.method public static values()[Lu/f0;
    .locals 1

    sget-object v0, Lu/f0;->n:[Lu/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/f0;

    return-object v0
.end method

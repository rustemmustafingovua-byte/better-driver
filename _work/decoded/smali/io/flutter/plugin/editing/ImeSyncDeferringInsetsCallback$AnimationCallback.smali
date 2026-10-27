.class Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "ImeSyncDeferringInsetsCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    .line 122
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 179
    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$300(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$302(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Z)Z

    .line 188
    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$500(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$500(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 192
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 193
    .local v0, "insets":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$600(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$ImeVisibilityListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    .line 195
    .local v1, "imeVisible":Z
    iget-object v2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v2}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$600(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$ImeVisibilityListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$ImeVisibilityListener;->onImeVisibilityChanged(Z)V

    .line 197
    .end local v1    # "imeVisible":Z
    :cond_1
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 127
    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$102(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Z)Z

    .line 128
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v0

    iget-object v2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v2}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$302(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Z)Z

    .line 131
    :cond_0
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 7
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 136
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$300(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$100(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, "matching":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsetsAnimation;

    .line 141
    .local v2, "animation":Landroid/view/WindowInsetsAnimation;
    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v3

    iget-object v4, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v4}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 142
    const/4 v0, 0x1

    .line 143
    goto :goto_0

    .line 145
    .end local v2    # "animation":Landroid/view/WindowInsetsAnimation;
    :cond_1
    goto :goto_0

    .line 146
    :cond_2
    if-nez v0, :cond_3

    .line 147
    return-object p1

    .line 154
    :cond_3
    const/4 v1, 0x0

    .line 155
    .local v1, "excludedInsets":I
    iget-object v2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v2}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v2

    .line 156
    .local v2, "systemUiFlags":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    if-ge v3, v4, :cond_4

    .line 157
    and-int/lit16 v3, v2, 0x200

    if-nez v3, :cond_4

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_4

    .line 159
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v1, v3, Landroid/graphics/Insets;->bottom:I

    .line 163
    :cond_4
    new-instance v3, Landroid/view/WindowInsets$Builder;

    iget-object v4, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v4}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$500(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/WindowInsets;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    .line 164
    .local v3, "builder":Landroid/view/WindowInsets$Builder;
    iget-object v4, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    .line 166
    invoke-static {v4}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 165
    invoke-static {v5, v5, v5, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    .line 167
    .local v4, "newImeInsets":Landroid/graphics/Insets;
    iget-object v5, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v5}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 173
    iget-object v5, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v5}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 174
    return-object p1

    .line 137
    .end local v0    # "matching":Z
    .end local v1    # "excludedInsets":I
    .end local v2    # "systemUiFlags":I
    .end local v3    # "builder":Landroid/view/WindowInsets$Builder;
    .end local v4    # "newImeInsets":Landroid/graphics/Insets;
    :cond_5
    :goto_1
    return-object p1
.end method

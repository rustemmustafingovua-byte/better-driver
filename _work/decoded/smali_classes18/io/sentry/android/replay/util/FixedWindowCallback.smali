.class public Lio/sentry/android/replay/util/FixedWindowCallback;
.super Ljava/lang/Object;
.source "FixedWindowCallback.java"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final delegate:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "delegate"    # Landroid/view/Window$Callback;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    .line 45
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 81
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 49
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 57
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 89
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 65
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 73
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 230
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 234
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 222
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 226
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 162
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 166
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 146
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 150
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 106
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 98
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 170
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 174
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 130
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 122
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 178
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 182
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 249
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 253
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 114
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 240
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 244
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 195
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 138
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 154
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 158
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 204
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 214
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/FixedWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
